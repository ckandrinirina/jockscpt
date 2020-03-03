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
        $this->load->model('AppelSurModel', 'appelSur');
        $this->load->helper('pdf');
        $this->load->helper('string');
    }

    //Page d'accueil du fiche
    public function client($client)
    {
        $data = $this->client->findClientByName($client);
        $finalData = $data[0];
        $finalData['json_data'] = json_encode($finalData);
        $this->layout->views('default/navbar')
            ->view('fiche/client', $finalData);
    }

    public function ajaxGetStat()
    {
        $start = $this->input->get('start');
        $end = $this->input->get('end');
        $stat = $this->stat->generateStat($start, $end);
        header('Content-type:application/json');
        echo json_encode([
            'stat' => $stat
        ]);
    }

    public function generateStat($start, $end)
    {
        $start = $this->stat->explodeDate($start, '-');
        $end = $this->stat->explodeDate($end, '-');
        //get all page jaune point conseil
        $pjpc = count($this->statistique->findpjpc($start, $end));
        //get all page jaune reparateur qualifié
        $pjrq = count($this->statistique->findpjrq($start, $end));
        //get all mini site point conseil
        $mspc = count($this->statistique->findmspc($start, $end));
        //get all mini site reparateur qualifié
        $msrq = count($this->statistique->findmsrq($start, $end));
        $data = [
            'pjpc' => $pjpc,
            'pjrq' => $pjrq,
            'mspc' => $mspc,
            'msrq' => $msrq,
            'start' => $start,
            'end' => $end
        ];
        $option = [
            'stylesheet_url' => 'default',
            'filename' => 'stat_' . $start . $end,
            'action' => 'download',
            'save_folder' => __DIR__ . '/../../uploads/pdf_temp/'
        ];
        $html = $this->load->view('stat/stat', $data)->output->final_output;
        generate_pdf($html, $option);
    }

    public function ajaxFindAllClient()
    {
        $client_id = $this->input->get('client_id');
        $allDist = $this->client->findAllDistByIdClient($client_id);
        header('Content-type:application/json');
        echo json_encode([
            'data' => $allDist
        ]);
    }

    public function ajaxGetDistByName()
    {
        $reparateur_qualifie_nom = $this->input->get('reparateur_qualifie_nom');
        $data = $this->client->findDistByName($reparateur_qualifie_nom)[0];
        $count = count($this->client->findDistByName($reparateur_qualifie_nom));
        header('Content-type:application/json');
        echo json_encode([
            'data' => $data,
            'count' => $count
        ]);
    }

    public function saveDist()
    {
        $data = $this->input->post('data');
        $this->client->saveDist($data);
    }
    public function editDist()
    {
        $data = $this->input->post('data');
        $lastData = $this->appelSur->findIsRqByNumero($data['reparateur_qualifie_numero']);
        $this->client->editDist($data,$lastData);
    }
}
