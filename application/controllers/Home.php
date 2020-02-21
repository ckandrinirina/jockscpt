<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('layout');
        $this->load->model('ScriptModel', 'script');
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
        foreach ($data as $value) {
            //test if libelle => append text to view
            if ($value['champs_type'] == 'libelle') {
                $view .= '<p>' . $value['champs_libelle'] . '</p>';
            }

            //else an input => append input to view
            else {
                $view .= '<div style="display:flex">' .
                    '<input class="' . $value['champs_type'] . '" type="' . $value['champs_type'] . '" name="name_' . $value['champs_num_step'] . '" id="' . $value['champs_id'] . '" value="' . $value['champs_id'] . '"/>' .
                    '<p>' . $value['champs_libelle'] . '</p>' .
                    '</div>';
            }


            //automaticaly apend next if value = 1
            $isAppendNext = $value['champs_is_append_next'];
        }
        $view = '<div class="col-md-4" id="' . $data[0]['champs_num_step'] . '">' . $view . '</div>';
        return $view;
    }

    

    public function export_pdf()
    {
        $html = $this->load->view('pdf/stats_pdf_view')->output->final_output;
        generate_pdf($html);
    }

    public function send_email()
    {
        sendEmail('test@test.com', 'test', 'test');
    }
}
