<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->library('layout');
        $this->load->model('ScriptModel','script');
    }

    //default home page
	public function index()
	{
        //get initial step and render view
        $data['title'] = $this->script->FindByStep(1);
		$this->layout->view('home/index',$data);
    }
    
    //get content by ajax
    public function ajaxGetContentByStep()
    {
        $step = $this->input->get('step');
        $data = $this->script->FindByStep($step);
        $view = $this->generateViewFromData($data);
        echo $view;
    }

    //generate view from data via ajax
    private function generateViewFromData($data)
    {
        $view = '';
        foreach ($data as $value) {
            //test if libelle => append text to view
            if($value['champs_type'] == 'libelle')
                $view .= '<p>'.$value['champs_libelle'].'</p>';
            //else an input => append input to view
            else{
                $view .='<div style="display:flex">'.
                            '<input type="'.$value['champs_type'].'" name="name_'.$value['champs_num_step'].'" id="radio_'.$value['champs_id'].'" value="'.$value['champs_id'].'"/>'.
                            '<p>'.$value['champs_libelle'].'</p>'.
                        '</div>';
            }
        }
        return $view;
    }
}