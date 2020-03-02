<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class StatModel extends CI_Model
{
    private $table = 'script_data';
    public function findBetween($start, $end)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_date_creation BETWEEN "'.$start.'" AND "'.$end.'"')
            ->get()
            ->result_array();
    }
    public function findBetweenPc($start, $end)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_date_creation BETWEEN "'.$start.'" AND "'.$end.'"')
            ->where('script_data_is_pq','1')
            ->get()
            ->result_array();
    }
    public function findBetweenRq($start, $end)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_date_creation BETWEEN "'.$start.'" AND "'.$end.'"')
            ->where('script_data_is_pq','0')
            ->get()
            ->result_array();
    }
    public function findBetweenTypage($start, $end)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_date_creation BETWEEN "'.$start.'" AND "'.$end.'"')
            ->where('script_data_is_pq','2')
            ->get()
            ->result_array();
    }
}
