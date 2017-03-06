<?php

class Gallery
{
    public $nome;
    public $dirname;
    public $thumb;
}


$ethiopia = new Gallery();
$ethiopia->nome = 'Ethiopia';
$ethiopia->descBreve = 'Ethiopia';
$ethiopia->dirname = 'ethiopia';
$ethiopia->thumb = '0.jpg';

$mongolia = new Gallery();
$mongolia->nome = 'Mongolia';
$ethiopia->descBreve = 'Ethiopia';
$mongolia->dirname = 'mongolia';
$mongolia->thumb = '20160708-IMG_2045-Modifica.jpg';

$padania = new Gallery();
$padania->nome = 'padania';
$padania->descBreve = 'Padania landscape';
$padania->desc = 'La devastazione della mia terra, grazie a cemento e asfalto: un tentativo di trovare comunque un po\' di bellezza.<br />Le immagini sono in formato quadrato, scattate con una hasselblad e pellicola Kodak portra';
$padania->dirname = 'padania';
$padania->thumb = '20150816-IMG_20140830_0004.jpg';

$galleries = array($ethiopia, $mongolia, $padania);
?>
