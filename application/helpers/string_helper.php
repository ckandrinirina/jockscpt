<?php
defined('BASEPATH') OR exit('No direct script access allowed');
function formatNumero($numero)
{
    $final_numero = '';
    $numero = str_replace(" ","",$numero);

    if(strlen($numero) != 10)
        $numero = '0'.$numero;

    for ($i=0; $i < strlen($numero); $i++) {
        if($i % 2 || $i == 0) 
            $final_numero .= $numero[$i];
        else
            $final_numero .= ' '.$numero[$i];
    }
    return $final_numero;
}
?>