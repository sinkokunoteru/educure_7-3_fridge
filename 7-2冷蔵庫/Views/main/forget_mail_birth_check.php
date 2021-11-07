<?php
require_once(ROOT_PATH.'Controllers/RefrigeratorController.php');
$foods = new RefrigeratorController();
$params = $foods ->remember();

?>
