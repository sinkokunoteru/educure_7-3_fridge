<?php
require_once(ROOT_PATH."Controllers/RefrigeratorController.php");
$users = new RefrigeratorController();
$params = $users->login_check();
session_start();
$data = $_POST['data'];
$error_flag = 0;

for($i=0;$i<2;$i++){
  $_SESSION['flag'][$i] = 0;
}

if(filter_var($data[0],FILTER_VALIDATE_EMAIL)){
  $error_flag = 0;
}else if(empty($data[0]) || mb_strlen($data[0]) > 10) {//氏名orメールアドレス
  $error_flag = 1;
}
if(empty($data[1]) || mb_strlen($data[1]) > 10) {//パスワード
  $error_flag = 1;
}

  if($error_flag == 1 ){
    header("location: login.php");
  }

  if(isset($params['form']['id'])){
    $_SESSION['id']=$params['form']['id'];
    header("location: main_menu.php");
  }
?>
