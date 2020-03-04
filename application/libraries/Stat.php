<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Stat
{
    private $CI;
    public function __construct()
    {
        $this->CI = &get_instance();
        $this->CI->load->model('StatModel', 'statique');
    }
    public function generateStat($start, $end)
    {
        $start = $this->explodeDate($start, '/');
        $end = $this->explodeDate($end, '/');
        $total = count($this->CI->statique->findBetween($start, $end));
        $pc = count($this->CI->statique->findBetweenPc($start, $end));
        $rq = count($this->CI->statique->findBetweenRq($start, $end));
        $typage = count($this->CI->statique->findBetweenTypage($start, $end));
        if ($total == 0) {
            $stat = [
                'pc' => 0,
                'rq' => 0,
                'typage' => 0,
                'appel' => 0
            ];
        } else {
            $stat = [
                'pc' => number_format(($pc / $total) * 100, 2, ',', ''),
                'rq' => number_format(($rq / $total) * 100, 2, ',', ''),
                'typage' => number_format(($typage / $total) * 100, 2, ',', ''),
                'appel' => $total
            ];
        }
        return $stat;
    }

    public function explodeDate($date, $c)
    {
        $dataExplode = explode($c, $date);
        return $dataExplode[2] . '-' . $dataExplode[1] . '-' . $dataExplode[0];
    }
}
