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
        $this->load->model('StatModel', 'statistique');
        $this->load->helper('pdf');
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

    public function generateStat($start,$end)
    {
        $start = $this->stat->explodeDate($start,'-');
        $end = $this->stat->explodeDate($end,'-');
        //get all page jaune point conseil
        $pjpc = count($this->statistique->findpjpc($start,$end));
        //get all page jaune reparateur qualifié
        $pjrq = count($this->statistique->findpjrq($start,$end));
        //get all mini site point conseil
        $mspc = count($this->statistique->findmspc($start,$end));
        //get all mini site reparateur qualifié
        $msrq = count($this->statistique->findmsrq($start,$end));
        $option = [
            'filename' => 'stat_'.$start.$end,
            'action' => 'download'
        ];
        $html = $this->load->view('stat/stat')->output->final_output;
        $html = '';
        generate_pdf($html,$option);
    }
}