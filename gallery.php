<?php
require_once('_smarty.inc.php');

function startsWith($haystack, $needle) {
    // search backwards starting from haystack length characters from the end
    return $needle === "" || strrpos($haystack, $needle, -strlen($haystack)) !== false;
}

function endsWith($haystack, $needle) {
    // search forward starting from end minus needle length characters
    return $needle === "" || (($temp = strlen($haystack) - strlen($needle)) >= 0 && strpos($haystack, $needle, $temp) !== false);
}

$gallery = $_GET["g"];

$dir    = __DIR__ . '/photographs/galleries/' . $gallery  . '/1200/';
$images = scandir($dir);


function nomeFileValido($var) {
    return substr( $var, 0, 1 ) !== "." && endsWith($var, ".jpg");
}

$smarty->assign("images",array_filter($images, "nomeFileValido"));
$smarty->assign("gallery", $gallery);
$smarty->display('gallery.tpl');
?>
