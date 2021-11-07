<?php
session_start();
$_POST['id']=$_SESSION['id'];
var_dump($_POST);
require_once(ROOT_PATH.'Controllers/RefrigeratorController.php');
$fridge = new RefrigeratorController();
$params = $fridge->add_food();
header('Location: add_fridge.php');
?>
