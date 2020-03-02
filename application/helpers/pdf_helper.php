<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once __DIR__ . '/../../vendor/autoload.php';

/**
 * @var $html string 
 * @var $option array
 */
function generate_pdf(
    $html,
    $option = [
        'stylesheet_url'=>'default',
        'action'=>'save',
        'filename'=>'stats',
        'save_folder'=>__DIR__ . '/../../uploads/pdf_temp/'
    ]
){
    $mpdf = new \Mpdf\Mpdf([
        'orientation' => 'P', // Define a page using all default values except "L" for Landscape orientation
        'mode' => 'utf-8' // encoding
    ]);

    // default css using if not custon css
    $stylesheet_url = $option['stylesheet_url'] == 'default' ? base_url('assets/css/pdf_style_default.css') : $option['stylesheet_url'];

    $stylesheet = file_get_contents($stylesheet_url); // external css
    $mpdf->WriteHTML($stylesheet, 1);
    $mpdf->WriteHTML($html, 2);
    if($option['action'] == 'save'){
        $mpdf->Output($option['save_folder'] . $option['filename'] . ".pdf");
    }else if($option['action'] == 'download'){
        $mpdf->Output($option['filename'] . ".pdf",'D');
    }
}