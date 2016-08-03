<?php

require_once('_smarty.inc.php');


$dir    = __DIR__ . '/photographs/portfolio';
$images = scandir($dir);


function nomeFileValido($var) {
    return substr( $var, 0, 1 ) !== ".";
}

// print_r(array_filter($images, "nomeValido"));
$smarty->assign("images", array_filter($images, "nomeFileValido"));
$smarty->display('index.tpl');

?>
