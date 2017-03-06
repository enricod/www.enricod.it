<?php
require_once('_smarty.inc.php');
require_once('_galleries.inc.php');

function startsWith($haystack, $needle) {
    // search backwards starting from haystack length characters from the end
    return $needle === "" || strrpos($haystack, $needle, -strlen($haystack)) !== false;
}

function endsWith($haystack, $needle) {
    // search forward starting from end minus needle length characters
    return $needle === "" || (($temp = strlen($haystack) - strlen($needle)) >= 0 && strpos($haystack, $needle, $temp) !== false);
}

function trovaJsonGalleria($galleries, $nome) {
    foreach( $galleries as $g) {
        if ($g->dirname == $nome) {
            $gal = $g;
        }
    }
    return $gal;
}

$gal = trovaJsonGalleria($galleries, $_GET["g"]);


$dir    = __DIR__ . '/photographs/galleries/' . $gal->dirname  . '/small/';
$images = scandir($dir);

function nomeFileValido($var) {
    return substr( $var, 0, 1 ) !== "." && endsWith($var, ".jpg");
}

$smarty->assign("images",array_filter($images, "nomeFileValido"));
$smarty->assign("gallery", $gal);
$smarty->display('gallery.tpl');
?>
