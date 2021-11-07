<?php
session_start();
require_once(ROOT_PATH.'Controllers/RefrigeratorController.php');
if(isset($_SESSION['data'])){
  $_POST = $_SESSION['data'];
}else{
  echo "入力がありません";
  exit();
}

$form =  new  RefrigeratorController();
    $mail = $form->email_exist();
    var_dump($mail);
    if($mail['mail']['email']==0){
      $params = $form->send();
    }else {
      echo "このメールアドレスは登録済みです";
      echo '<a href = "create_account.php">戻る</a>';
      exit();
    }
    $referer = $_SERVER["HTTP_REFERER"];
    $url = 'account_confirm.php';
    if(!strstr($referer,$url)){
      header("location: create_account.php");
    }

    $_SESSION=array();
    session_destroy();
    header("location: login.php");
?>
