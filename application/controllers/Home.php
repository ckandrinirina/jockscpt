<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('layout');
        $this->load->model('ScriptModel', 'script');
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
                        "<input type='text' placeholder='Nom'>" .
                        "<input type='text' placeholder='Prénom'>" .
                        "<input type='text' placeholder='Adresse'>" .
                        "<input type='text' placeholder='CP'>" .
                        "<input type='text' placeholder='Ville'>" .
                        "<input type='text' placeholder='Sélectionner une ville'>" .
                        "</div>";
                    $view .= '<div class="col-md-4 step_' . $data[0]['champs_num_step'] . '">' . $view_tmp . '</div>';

                    break;
                case 'nbr_volet';
                    $view_tmp = "<p>Nombre de volet à poser?</p>" .
                        "<input type='text'>";
                    $view .= '<div class="col-md-4 step_' . $data[0]['champs_num_step'] . '">' . $view_tmp . '</div>';
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
                    $view_tmp .= '<button class="btn btn-default next" id="' . $champ_id . '">' . $libelle . '</button>';
                    break;
                case 'text': //if type text
                    $view_tmp .= '<p>' . $libelle . '</p>' .
                        '<input class="text" type="' . $type . '" name="name_' . $num_step . '" id="' . $champ_id . '"/>';
                    break;
                case 'textarea': //if type textarea
                    $view_tmp .= '<p>' . $libelle . '</p>' .
                        '<textarea class="textarea" name="name_' . $num_step . '" id="' . $champ_id . '"></textarea>';
                    break;

                default: //else an input => append input to view_tmp
                    $view_tmp .= '<div class="block-puce">' .
                        '<input class="next puce" type="' . $type . '" name="name_' . $num_step . '" id="' . $champ_id . '" value="' . $champ_id . '"/>' .
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
        if($isRq != null){
            echo $isRq[0]['reparateur_qualifie_is_rep_q'];
        }else{
            echo 'false';
        }
    }

    public function ajaxFindAllNumero()
    {
        $data = $this->appelSur->findAllNumero();
        header('Content-type:application/json');
        echo json_encode([
            'data'=>$data,
        ]);
    }

    public function send_email()
    {
        // sendEmail('test@test.com', 'test', 'test');
    }
}
