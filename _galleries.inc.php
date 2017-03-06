<?php

$galleries = array();

$galleriesDir = __DIR__ . '/photographs/galleries';
$subDirs = scandir($galleriesDir);

foreach( $subDirs as $k => $g) {
    $d = $galleriesDir . '/' . $g;
    if (is_dir($d) && file_exists($d . '/gallery.json' )) {
        $jsonStr =  file_get_contents( $d . '/gallery.json');
        $gallery = json_decode($jsonStr);
        $gallery->dirname = $g;
        
        array_push($galleries, $gallery);
        
    }
}


?>
