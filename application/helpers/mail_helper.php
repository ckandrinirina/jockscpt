<?php
defined('BASEPATH') OR exit('No direct script access allowed');
function sendEmail($to,$from,$subject,$message,$file_path = 'none')
{
    $ci =& get_instance();
    $ci->load->library('email');
    $config = Array(
        'protocol' => 'smtp',
        'smtp_host' => 'localhost:8080',
        'smtp_port' => 25,
        'smtp_user' => '', 
        'smtp_pass' => '', 
        'mailtype' => 'html',
        'charset' => 'iso-8859-1',
        'wordwrap' => TRUE
    );

    $ci->load->library('email', $config);
    $ci->email->set_newline("\r\n");
    $ci->email->from($from);
    $ci->email->to($to);
    $ci->email->subject($subject);
    $ci->email->message($message);
    if ($file_path != 'none'){
        $ci->email->attach($file_path);
    }
    if($ci->email->send()){
        echo 'Email send.';
    }else{
        show_error($ci->email->print_debugger());
    }
}