<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class  AppelSurModel extends CI_Model
{
    private $table = 'reparateur_qualifie';

    public function findAllNumero($reparateur_qualifie_client_fk)
    {
        return $this->db->select('reparateur_qualifie_numero')
                        ->from($this->table)
                        ->where('reparateur_qualifie_client_fk',$reparateur_qualifie_client_fk)
                        ->order_by('reparateur_qualifie_numero','ASC')
                        ->get()
                        ->result_array();
    }

    public function findIsRqByNumero($value)
    {
        return $this->db->get_where($this->table,['reparateur_qualifie_numero'=>$value])
                        ->result_array();
    }
}
