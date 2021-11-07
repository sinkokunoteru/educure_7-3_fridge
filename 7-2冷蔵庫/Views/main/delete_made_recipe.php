<?php
require_once(ROOT_PATH.'Controllers/RefrigeratorController.php');
$fridge = new RefrigeratorController();
$params = $fridge->del_made_recipe();
header('Location: made_recipes.php');
var_dump($_GET);
?>
