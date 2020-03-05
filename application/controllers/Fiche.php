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
    public function index()
    {
        $this->client();
    }
    //Page d'accueil du fiche
    public function client($client = 'Bunbendorff')
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
        $client_id = $this->input->get('client_id');
        $stat = $this->stat->generateStat($start, $end, $client_id);
        header('Content-type:application/json');
        echo json_encode([
            'stat' => $stat
        ]);
    }

    public function generateStat($client_id, $start, $end)
    {
        $start = $this->stat->explodeDate($start, '-');
        $end = $this->stat->explodeDate($end, '-');
        //get all page jaune point conseil
        $pjpc = count($this->statistique->findpjpc($start, $end, $client_id));
        //get all page jaune reparateur qualifié
        $pjrq = count($this->statistique->findpjrq($start, $end, $client_id));
        //get all page jaune typqge
        $pjtp = count($this->statistique->findpjtp($start, $end, $client_id));
        //get all mini site point conseil
        $mspc = count($this->statistique->findmspc($start, $end, $client_id));
        //get all mini site reparateur qualifié
        $msrq = count($this->statistique->findmsrq($start, $end, $client_id));
        //get all mini site typage
        $mstp = count($this->statistique->findmstp($start, $end, $client_id));
        $data = [
            'pjpc' => $pjpc,
            'pjrq' => $pjrq,
            'pjtp' => $pjtp,
            'mspc' => $mspc,
            'msrq' => $msrq,
            'mstp' => $mstp,
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

    public function saveClient()
    {
        $data = $this->input->post('data');
        $client_id = $this->input->post('client_id');
        $this->client->saveClient($data, $client_id);
    }

    public function editDist()
    {
        $data = $this->input->post('data');
        $lastData = $this->appelSur->findIsRqByNumero($data['reparateur_qualifie_numero']);
        $this->client->editDist($data, $lastData);
    }

    public function ajaxUpdateConsigneGl()
    {
        $client_id = $this->input->post('client_id');
        $client_consigne_gl = $this->input->post('client_consigne_gl');
        $this->client->updateConsigneGl($client_id, ['client_consigne_gl' => $client_consigne_gl]);
    }
}
