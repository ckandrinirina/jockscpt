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
        $this->load->helper('pdf');
        $this->load->helper('mail');
    }

    //default home page
    public function index()
    {
        //get initial step and render view
        $data['title'] = $this->script->FindByStep(0);
        $this->layout->views('default/navbar')
            ->view('home/index', $data);
    }

    //get content by ajax
    public function ajaxGetContentByStep()
    {
        $step = $this->input->get('step');
        $data = $this->script->FindByStep($step);
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
        $view = $this->viewHtml($data);
        header('Content-type:application/json');
        echo json_encode([
            'html' => $view,
            'data' => $data
        ]);
    }

    private function viewHtml($data)
    {
        $view = '';
        // $not_dynamic_frame = ['contact','nbr_volet'];
        foreach ($data as $value) {
            $reference = $value['champs_reference'];
            $view_tmp = '';
            switch ($reference) {
                case 'contact':
                    $view_tmp = "<div class='frame-contact'>" .
                        "<p>Coordonnées de l'appelant</p>" .
                        "<input type='text' placeholder='Nom' id='nom_client'>" .
                        "<input type='text' placeholder='Prénom' id='prenom_client'>" .
                        "<input type='text' placeholder='Adresse' id=adresse_client>" .
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
                    $view .= '<div class="col-md-4 step_' . $data[0]['champs_num_step'] . '"><button class="btn btn-default" id="save">Enregistrer</button></div>';
                    break;
                case 'send_save':
                    $view .= '<div class="col-md-4 step_' . $data[0]['champs_num_step'] . '"><button class="btn btn-default" id="send_save">Enregistrer et envoyer message</button></div>';
                    break;
                default:
                    // default action
                    break;
            }
        }
        $view_tmp = '';
        foreach ($data as $value) {
            $type = $value['champs_type'];
            $libelle = $value['champs_libelle'];
            $champ_id = $value['champs_id'];
            $num_step = $value['champs_num_step'];
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
        return $view;
    }



    public function export_pdf()
    {
        $html = $this->load->view('pdf/stats_pdf_view')->output->final_output;
        generate_pdf($html);
    }

    public function ajaxTestIsRq()
    {
        $value = $this->input->get('value');
        $isRq = $this->appelSur->findIsRqByNumero($value);
        header('Content-type:application/json');
        echo json_encode([
            'data' => $isRq[0],
            'size' => count($isRq)
        ]);
        // if($isRq != null){
        //     echo $isRq[0]['reparateur_qualifie_is_rep_q'];
        // }else{
        //     echo 'false';
        // }
    }

    public function ajaxFindAllNumero()
    {
        $data = $this->appelSur->findAllNumero();
        header('Content-type:application/json');
        echo json_encode([
            'data' => $data,
        ]);
    }

    public function saveData()
    {
        $script_data_child = $this->input->post('script_data_child');
        $script_data = $this->input->post('script_data');
        $data = $this->appelSur->findIsRqByNumero($script_data['script_data_numero_client'])[0];
        if ($data['reparateur_qualifie_mail_sav'] != '') {
            $this->send_mail_script($script_data_child, $data['reparateur_qualifie_mail_sav']);
        } else {
            $this->send_mail_script($script_data_child, $data['reparateur_qualifie_mail_resp']);
        }
        $script_data_id = $this->save->insertScript($script_data);
        foreach ($script_data_child as $s) {
            $s['script_data_child_parent_fk'] = $script_data_id;
            $this->save->insertScriptChild($s);
        }
    }

    public function send_mail_script($script_data_child, $from)
    {
        $message = '';
        foreach($script_data_child as $data)
        {
            $message .= '<div style="display:flex"><p>'.$data['script_data_child_choix'].' : '.$data['script_data_child_libelle'].'</p></div></br>';
        }
        sendEmail('fiche@elise.fe',$from, 'Resultat du script',$message);
    }
}
