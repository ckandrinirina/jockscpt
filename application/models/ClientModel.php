<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class  ClientModel extends CI_Model
{
    private $table = 'client';
    private $table1 = 'client_contact';
    private $table2 = 'reparateur_qualifie';

    public function findAllClient()
    {
        return $this->db->select('*')
            ->from($this->table)
            ->get()
            ->result_array();
    }

    public function findClientByName($client)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('client_name', $client)
            ->get()
            ->result_array();
    }

    public function findAllDistByIdClient($client_id)
    {
        return $this->db->select('reparateur_qualifie_nom')
            ->from($this->table2)
            ->where('reparateur_qualifie_client_fk', $client_id)
            ->get()
            ->result_array();
    }

    public function findDistByName($reparateur_qualifie_nom)
    {
        return $this->db->select('*')
            ->from($this->table2)
            ->where('reparateur_qualifie_nom', $reparateur_qualifie_nom)
            ->get()
            ->result_array();
    }

    public function saveClient($data, $client_id)
    {
        $this->db->where('client_id', $client_id)
            ->update($this->table, $data);
    }

    public function saveDist($data)
    {
        if ($data['reparateur_qualifie_is_rep_q'] == 2) {
            $data1 = $data;
            $data2 = $data;
            $data1['reparateur_qualifie_is_rep_q'] = 0;
            $data2['reparateur_qualifie_is_rep_q'] = 0;
            $this->db->insert($this->table2, $data1);
            $this->db->insert($this->table2, $data2);
        } else {
            $this->db->insert($this->table2, $data);
        }
    }

    public function editDist($data, $lastData)
    {
        foreach ($lastData as $key => $value) {
            $this->db->where('reparateur_qualifie_id', $value['reparateur_qualifie_id'])
                ->update($this->table2, $data);
        }
    }

    public function updateConsigneGl($client_id, $data)
    {
        $this->db->where('client_id', $client_id)
            ->update($this->table, $data);
    }

    public function addContact($data)
    {
        $this->db->insert($this->table1, $data);
    }

    public function getAllContact($client_id)
    {
        return $this->db->get_where($this->table1, ['client_contact_client_fk' => $client_id])
            ->result_array();
    }

    public function deleteContact($client_contact_id)
    {
        $this->db->where('client_contact_id', $client_contact_id)
            ->delete($this->table1);
    }
}
