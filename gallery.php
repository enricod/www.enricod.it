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

function nomeFileValido($var) {
    return substr( $var, 0, 1 ) !== "." && endsWith($var, ".jpg");
}

$gal = trovaJsonGalleria($galleries, $_GET["g"]);

class Image {

};
$dir    = __DIR__ . '/photographs/galleries/' . $gal->dirname  . '/small/';
$imageNames = scandir($dir);

$validNames = array_filter($imageNames, "nomeFileValido");
function cercaImmagineDesc($gal, $filename) {
    foreach( $gal->images as $i) {
        if ($i->filename == $filename) {
            return $i;
        }
    }
    return NULL;
}
$images = array();
foreach( $validNames as $n ) {
    $i = new Image();
    $i->filename = $n;
    
    $describedImage = cercaImmagineDesc($gal, $n);

    if ($describedImage) {
        $i->titolo = $describedImage->titolo;
    } else {
        $i->titolo = $i->filename;
    }

    array_push($images, $i);
}

$smarty->assign("images", $images);
$smarty->assign("gallery", $gal);
$smarty->display('gallery.tpl');
?>
