<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class ScriptModel extends CI_Model
{
    private $table = 'champs';

    public function FindByStep($step)
    {
        return $this->db->select('*')
                        ->from($this->table)
                        ->where('champs_num_step', $step)
                        ->get()
                        ->result_array();
    }
}
