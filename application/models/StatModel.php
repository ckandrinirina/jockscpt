<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class StatModel extends CI_Model
{
    private $table = 'script_data';
    public function findBetween($start, $end)
    {
        return $this->db->select('*')
            ->from($this->table)
            ->where('script_data_date_creation >=', date('Y-m-d', strtotime($start)))
            ->where('script_data_date_creation <=', date('Y-m-d', strtotime($end)))
            ->get()
            ->result_array();
    }
}
