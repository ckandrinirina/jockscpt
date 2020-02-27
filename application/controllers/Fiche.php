<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class Fiche extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('layout');
        $this->load->model('ClientModel', 'client');
        $this->load->helper('pdf');
        $this->load->helper('mail');
    }

    public function client($client)
    {
        $data = $this->client->findClientByName($client);
        $this->layout->views('default/navbar')
                    ->view('fiche/client', $data[0]);
    }
}