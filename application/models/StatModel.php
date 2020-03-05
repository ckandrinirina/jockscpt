<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class StatModel extends CI_Model
{
    private $table = 'script_data';
    public function findBetween($start, $end, $client_id)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_client_fk', $client_id)
            ->where('script_data_date_creation BETWEEN "' . $start . '" AND "' . $end . '"')
            ->get()
            ->result_array();
    }
    public function findBetweenPc($start, $end, $client_id)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_client_fk', $client_id)
            ->where('script_data_date_creation BETWEEN "' . $start . '" AND "' . $end . '"')
            ->where('script_data_is_pq', '1')
            ->get()
            ->result_array();
    }
    public function findBetweenRq($start, $end, $client_id)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_client_fk', $client_id)
            ->where('script_data_date_creation BETWEEN "' . $start . '" AND "' . $end . '"')
            ->where('script_data_is_pq', '0')
            ->get()
            ->result_array();
    }
    public function findBetweenTypage($start, $end, $client_id)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_client_fk', $client_id)
            ->where('script_data_date_creation BETWEEN "' . $start . '" AND "' . $end . '"')
            ->where('script_data_is_pq', '2')
            ->get()
            ->result_array();
    }
    public function findpjpc($start, $end, $client_id)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_client_fk', $client_id)
            ->where('script_data_date_creation BETWEEN "' . $start . '" AND "' . $end . '"')
            ->where('script_data_is_pq', '1')
            ->where('script_data_is_mini_site', '0')
            ->get()
            ->result_array();
    }
    public function findpjrq($start, $end, $client_id)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_client_fk', $client_id)
            ->where('script_data_date_creation BETWEEN "' . $start . '" AND "' . $end . '"')
            ->where('script_data_is_pq', '0')
            ->where('script_data_is_mini_site', '0')
            ->get()
            ->result_array();
    }
    public function findpjtp($start, $end, $client_id)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_client_fk', $client_id)
            ->where('script_data_date_creation BETWEEN "' . $start . '" AND "' . $end . '"')
            ->where('script_data_is_pq', '2')
            ->where('script_data_is_mini_site', '0')
            ->get()
            ->result_array();
    }
    public function findmspc($start, $end, $client_id)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_client_fk', $client_id)
            ->where('script_data_date_creation BETWEEN "' . $start . '" AND "' . $end . '"')
            ->where('script_data_is_pq', '1')
            ->where('script_data_is_mini_site', '1')
            ->get()
            ->result_array();
    }
    public function findmsrq($start, $end, $client_id)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_client_fk', $client_id)
            ->where('script_data_date_creation BETWEEN "' . $start . '" AND "' . $end . '"')
            ->where('script_data_is_pq', '0')
            ->where('script_data_is_mini_site', '1')
            ->get()
            ->result_array();
    }
    public function findmstp($start, $end, $client_id)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_client_fk', $client_id)
            ->where('script_data_date_creation BETWEEN "' . $start . '" AND "' . $end . '"')
            ->where('script_data_is_pq', '2')
            ->where('script_data_is_mini_site', '1')
            ->get()
            ->result_array();
    }
}
