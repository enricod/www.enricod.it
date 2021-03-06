<?php
// *nix style (note capital 'S')
define('SMARTY_DIR', __DIR__ . '/smarty-3.1.29/libs/');

require_once(SMARTY_DIR . 'Smarty.class.php');
$smarty = new Smarty();

$smarty->setTemplateDir(__DIR__ . '/templates/');
$smarty->setCompileDir(__DIR__ . '/templates_c/');
$smarty->setConfigDir( __DIR__ . '/configs/');
$smarty->setCacheDir(__DIR__ . '/cache/');

//$smarty->force_compile = true;
$smarty->debugging = false;
$smarty->caching = false;
$smarty->cache_lifetime = 120;

?>
