<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class  ClientModel extends CI_Model
{
    private $table = 'client';

    public function findClientByName($client)
    {
        return $this->db->select('*')
                        ->from($this->table)
                        ->where('client_name',$client)
                        ->get()
                        ->result_array();
    }
}