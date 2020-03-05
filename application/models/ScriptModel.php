<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class ScriptModel extends CI_Model
{
    private $table = 'champs';

    public function FindByStep($step,$champs_client_id)
    {
        return $this->db->select('*')
                        ->from($this->table)
                        ->where('champs_client_id',$champs_client_id)
                        ->where('champs_num_step', $step)
                        ->order_by('champs_order','ASC')
                        ->get()
                        ->result_array();
    }

    public function getDataFormById($id)
    {
        return $this->db->get_where($this->table,['champs_id'=>$id])
                        ->result_array();
    }
}
