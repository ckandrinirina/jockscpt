<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class ScriptSave extends CI_Model
{
    private $table = 'script_data';
    private $table2 = 'script_data_child';

    public function insertScript($data)
    {
        $this->db->insert($this->table, $data);
        $data_id = $this->db->insert_id();
     
        return  $data_id;
    }

    public function insertScriptChild($data)
    {
        $this->db->insert($this->table2, $data);
    }
}
