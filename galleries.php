<?php
require_once('_smarty.inc.php');
require_once('_galleries.inc.php');

$smarty->assign("galleries", $galleries);
$smarty->display('galleries.tpl');
?>
