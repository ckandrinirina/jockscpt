<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('layout');
        $this->load->model('ScriptModel', 'script');
        $this->load->model('ScriptSave', 'save');
        $this->load->model('AppelSurModel', 'appelSur');
        $this->load->model('ClientModel', 'client');
        $this->load->helper('pdf');
        $this->load->helper('mail');
        $this->load->helper('string');
    }

    //default home page
    public function index()
    {
        $this->script();
    }

    public function script($client)
    {
        //get initial step and render view
        $dataClient = $this->client->findClientByName($client);
        $finalData = $dataClient[0];
        $data['json_data'] = json_encode($finalData);
        $this->layout->views('default/navbar')
            ->view('home/index', $data);
    }
    //get content by ajax
    public function ajaxGetContentByStep()
    {
        $step = $this->input->get('step');
        $champs_client_id = $this->input->get('champs_client_id');
        $data = $this->script->FindByStep($step,$champs_client_id);
        // var_dump($data);die();
        $this->generateViewFromData($data);
    }

    public function ajaxGetDataFormById()
    {
        $id = $this->input->get('id');
        $data = $this->script->getDataFormById($id);
        header('Content-type:application/json');
        echo json_encode([
            'data' => $data
        ]);
    }

    //generate view from data via ajax
    private function generateViewFromData($data)
    {
        $dataView = $this->viewHtml($data);
        $view = $dataView['view'];
        $isSave = $dataView['isSave'];
        header('Content-type:application/json');
        echo json_encode([
            'html' => $view,
            'data' => $data,
            'isSave' => $isSave
        ]);
    }

    private function viewHtml($data)
    {
        $view = '';
        $isSave = 0;
        $idMessage = 0;
        // $not_dynamic_frame = ['contact','nbr_volet'];
        foreach ($data as $value) {
            $reference = $value['champs_reference'];
            $value = $value['champs_libelle'];
            $view_tmp = '';
            //pour les chapms qui sont particulier
            switch ($reference) {
                case 'contact':
                    //recuperer les contacts du client
                    $view_tmp = "<div class='frame-contact'>" .
                        "<p>Coordonnées de l'appelant</p>" .
                        "<input type='text' placeholder='Nom' id='nom_client'>" .
                        "<input type='text' placeholder='Prénom' id='prenom_client'>" .
                        "<input type='text' placeholder='Adresse' id='adresse_client'>" .
                        "<input type='text' placeholder='Téléphone' id='telephone_client'>" .
                        "<input type='text' placeholder='CP' id='cp_client'>" .
                        "<input type='text' placeholder='Ville' id='ville_client'>" .
                        "</div>";
                    $view .= '<div class="col-md-4 step_' . $data[0]['champs_num_step'] . '">' . $view_tmp . '</div>';
                    break;
                case 'nbr_volet':
                    $view_tmp = "<p>Nombre de volet à poser?</p>" .
                        "<input type='text' id='nbr_volet'>";
                    $view .= '<div class="col-md-4 step_' . $data[0]['champs_num_step'] . '">' . $view_tmp . '</div>';
                    break;
                case 'save':
                    // $view .= '<div class="col-md-4 step_' . $data[0]['champs_num_step'] . '"><button class="btn btn-default save" id="save">Enregistrer et envoyer message</button></div>';
                    $isSave = 1;
                    break;
                case 'send_save':
                    // $view .= '<div class="col-md-4 step_' . $data[0]['champs_num_step'] . '"><button class="btn btn-default save" id="send_save">Enregistrer et envoyer message</button></div>';
                    $isSave = 1;
                    break;
                case 'rq_dem':
                    // $view .= '<div class="col-md-4 step_' . $data[0]['champs_num_step'] . '"><button class="btn btn-default save" id="rq_dem">Enregistrer et envoyer message</button></div>';
                    $isSave = 2;
                    break;
                case 'message':
                    $view .= '<div class="col-md-4 step_' . $data[0]['champs_num_step'] . ' message"><p>' . $value . '</p></div>';
                    $idMessage++;
                    break;
                default:
                    break;
            }
        }
        $view_tmp = '';
        foreach ($data as $value) {
            $type = $value['champs_type'];
            $libelle = $value['champs_libelle'];
            $champ_id = $value['champs_id'];
            $num_step = $value['champs_num_step'];
            //generer dynamiquement le view en fonction de l'étape
            switch ($type) {
                case 'none': //test if libelle => append text to view
                    break;
                case 'libelle': //test if libelle => append text to view
                    $view_tmp .= '<p>' . $libelle . '</p>';
                    break;
                case 'button': //if type button
                    $view_tmp .= '<button class="btn btn-default next" id="' . $champ_id . '" libelle="' . $libelle . '">' . $libelle . '</button>';
                    break;
                case 'text': //if type text
                    $view_tmp .= '<p>' . $libelle . '</p>' .
                        '<input class="text" type="' . $type . '" name="name_' . $num_step . '" id="' . $champ_id . '" libelle="' . $libelle . '"/>';
                    break;
                case 'textarea': //if type textarea
                    $view_tmp .= '<p>' . $libelle . '</p>' .
                        '<textarea class="textarea" name="name_' . $num_step . '" id="' . $champ_id . '" libelle="' . $libelle . '"></textarea>';
                    break;

                default: //else an input => append input to view_tmp
                    $view_tmp .= '<div class="block-puce">' .
                        '<input class="next puce" type="' . $type . '" name="name_' . $num_step . '" id="' . $champ_id . '" value="' . $champ_id . '" libelle="' . $libelle . '"/>' .
                        '<p>' . $libelle . '</p>' .
                        '</div>';
                    break;
            }
            //automaticaly apend next if value = 1
        }
        $view .= '<div class="col-md-4 step_' . $data[0]['champs_num_step'] . '">' . $view_tmp . '</div>';
        return [
            'view' => $view,
            'isSave' => $isSave
        ];
    }

    //generer un pdf
    public function export_pdf()
    {
        $html = $this->load->view('pdf/stats_pdf_view')->output->final_output;
        generate_pdf($html);
    }

    //tester si Reparateur qualifier et envoyer les donnés du client
    public function ajaxTestIsRq()
    {
        $value = $this->input->get('value');
        $isRq = $this->appelSur->findIsRqByNumero($value);
        header('Content-type:application/json');
        echo json_encode([
            'data' => $isRq[0],
            'size' => count($isRq)
        ]);
    }

    //prendre tous le numero
    public function ajaxFindAllNumero()
    {
        $reparateur_qualifie_client_fk = $this->input->get('client_id');
        $data = $this->appelSur->findAllNumero($reparateur_qualifie_client_fk);
        header('Content-type:application/json');
        echo json_encode([
            'data' => $data,
        ]);
    }

    //sauvegarder puis envoyer un mail
    public function saveData()
    {
        $script_data_child = $this->input->post('script_data_child');
        $script_data = $this->input->post('script_data');
        $param = $this->input->post('param');
        $message = $this->input->post('message');
        $dataClient = $this->input->post('dataClient');
        $data = $this->appelSur->findIsRqByNumero($script_data['script_data_numero_client'])[0];
        $script_data['script_data_date_creation'] = date('Y-m-d');
        $script_data_id = $this->save->insertScript($script_data);

        foreach ($script_data_child as $s) {
            $s['script_data_child_parent_fk'] = $script_data_id;
            $this->save->insertScriptChild($s);
        }

        if ($data['reparateur_qualifie_mail_sav'] != '') {
            if ($param == 'rq_dem') {
                $this->send_mail_rq($script_data_child, $data['reparateur_qualifie_mail_sav'], $message, $script_data, $dataClient);
            } else {
                $this->send_mail_script($script_data_child, $data['reparateur_qualifie_mail_sav'], $message, $script_data, $dataClient);
            }
        } else {
            if ($param == 'rq_dem') {
                $this->send_mail_rq($script_data_child, $data['reparateur_qualifie_mail_sav'], $message, $script_data, $dataClient);
            } else {
                $this->send_mail_script($script_data_child, $data['reparateur_qualifie_mail_resp'], $message, $script_data, $dataClient);
            }
        }
    }

    public function send_mail_script($script_data_child, $to, $message_plus, $script_data, $dataClient)
    {
        $to = str_replace (' ','',$to);
        $message = '';
        $message = '<p>Bonjour</p><br><br>'
            . '<p>Je vous prie de trouver ci-dessous les informations clients : </p><br><br>';

        foreach ($script_data_child as $data) {
            $message .= '<div style="display:flex"><p>' . $data['script_data_child_choix'] . ' : ' . $data['script_data_child_libelle'] . '</p></div></br>';
        }

        if ($script_data["script_data_c_app_nom"] != '' && $script_data["script_data_c_app_prenom"] != '')
            $message .= '<p>De Mme/Mr ' . $script_data["script_data_c_app_prenom"] . ' ' . $script_data["script_data_c_app_nom"] . '</p>';
        if ($script_data["script_data_c_app_tel"] != '')
            $message  .= '<p>T.privé:  ' . $script_data['script_data_c_app_tel'] . '</p>';
        $message .= '<p>' . $message_plus . '</p><br><br>';
        $message .= '<p>Bien à vous </p><br><br>';
        $message .= '<p>Élise Secrétariat </p><br><br>';
        $message .= '<p>Pour le compte :  ' . $dataClient['reparateur_qualifie_nom'] . '</p><br><br>';
        sendEmail($to, 'fiche@elise.fr', 'FICHE ELISE BUNDENDORFF', $message);
        sendEmail('fiche@elise.fr', 'fiche@elise.fr', 'FICHE ELISE BUNDENDORFF', $message);
    }

    public function send_mail_rq($script_data_child, $to, $message_plus, $script_data, $dataClient)
    {
        $to = str_replace (' ','',$to);
        $message = '';
        $message = '<p>Bonjour</p><br><br>'
            . '<p>Je vous prie de trouver ci-dessous les informations clients : </p><br><br>';
        foreach ($script_data_child as $data) {
            $message .= '<div style="display:flex"><p>' . $data['script_data_child_choix'] . ' : ' . $data['script_data_child_libelle'] . '</p></div></br>';
        }
        $message .= '<p>' . $message_plus . '</p>';
        $message .= '<p>Bien à vous </p><br><br>';
        $message .= '<p>Élise Secrétariat </p><br><br>';
        $message .= '<p>Pour le compte :  ' . $dataClient['reparateur_qualifie_nom'] . '</p><br><br>';
        sendEmail($to, 'fiche@elise.fr', 'RQ demande d’installation', $message);
        sendEmail('fiche@elise.fr', 'fiche@elise.fr', 'RQ demande d’installation', $message);
    }
}
