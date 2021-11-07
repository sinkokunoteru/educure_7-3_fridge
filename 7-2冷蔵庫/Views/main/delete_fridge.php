<?php
require_once(ROOT_PATH.'Controllers/RefrigeratorController.php');
$fridge = new RefrigeratorController();
$params = $fridge->del_fridge();
header('Location: fridge_view.php');
?>
