<?php
var_dump($_FILES);
$_POST['image_name'] = sha1($_FILES['image']['name'].$_SERVER['REQUEST_TIME']);
$file = $_POST['image_name'];
if(!empty($file)){
  move_uploaded_file($_FILES['image']['tmp_name'],dirname(__FILE__,3).'/public/post_imgs/'.$file);
}
session_start();
$_POST['id']=$_SESSION['id'];
require_once(ROOT_PATH.'Controllers/RefrigeratorController.php');
$fridge = new RefrigeratorController();
$params = $fridge->add_recipe();
header('Location: add_made_recipes.php');
?>
<a href="add_made_recipes.php">戻る</a>
