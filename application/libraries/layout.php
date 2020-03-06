<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Layout
{
    private $CI;
    private $var = array();

    /*
|===============================================================================
| Constructeur
|===============================================================================
*/

    public function __construct()
    {
        $this->CI = get_instance();
        $this->CI->load->helper('url');
        $this->var['output'] = '';
        $this->var['base_url'] = base_url();
        $this->var['js'] = [
            base_url('assets/js/jquery.min.js'),
            base_url('assets/js/bootstrap.min.js'),
            base_url('assets/js/bootstrap-datepicker.js'),
            base_url('assets/js/sweetalert2.all.min.js'),
            base_url('assets/js/tooltipster.bundle.min.js'),
        ];
        $this->var['css'] = [
            base_url('assets/css/bootstrap.min.css'),
            base_url('assets/css/style.css'),
            base_url('assets/css/all.css'),
            base_url('assets/css/tooltipster.bundle.min.css'),
        ];
    }

    /*
|===============================================================================
| Méthodes pour charger les vues
|	. view
|	. views
|===============================================================================
*/

    public function view($name, $data = array())
    {
        $this->var['output'] .= $this->CI->load->view($name, $data, true);
        $this->CI->load->view('../themes/default', $this->var);
    }

    public function views($name, $data = array())
    {
        $this->var['output'] .= $this->CI->load->view($name, $data, true);
        return $this;
    }
}
