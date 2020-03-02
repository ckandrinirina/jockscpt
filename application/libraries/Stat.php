<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Stat
{
    private $CI;
    public function __construct()
    {
        $this->CI =& get_instance();
        $this->CI->load->model('StatModel', 'statique');
    }
    public function generateStat($start, $end)
    {
        $allData = $this->CI->statique->findBetween($start, $end);
        var_dump($data);die();
        $stat = [];
        // $nbrPc = countPc();
        // $nbrRq = countRq();
        // $nbTypage = countTypae();
        return $stat;
    }
}
