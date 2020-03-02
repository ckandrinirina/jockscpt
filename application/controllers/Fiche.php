<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class Fiche extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('layout');
        $this->load->library('stat');
        $this->load->model('ClientModel', 'client');
        // $this->load->model('StatModel', 'stat');
        $this->load->helper('pdf');
        $this->load->helper('mail');
    }

    public function client($client)
    {
        $data = $this->client->findClientByName($client);
        $this->layout->views('default/navbar')
                    ->view('fiche/client', $data[0]);
    }

    public function ajaxGetStat()
    {
        $start = $this->input->get('start');
        $end = $this->input->get('end');
        $stat = $this->stat->generateStat($start,$end);
        header('Content-type:application/json');
        echo json_encode([
            'stat' => $stat
        ]);
    }

    public function generateStat()
    {
        
    }
}