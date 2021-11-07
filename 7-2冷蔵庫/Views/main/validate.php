<?php
session_start();
$data = $_POST['data'];
$error_flag = 0;

for($i=0;$i<5;$i++){
  $_SESSION['flag'][$i] = 0;
}

if(empty($data[0]) || mb_strlen($data[0]) > 10) {//氏名
  $_SESSION['flag'][0] = 1;
  $error_flag = 1;
}
if(empty($data[1])) {//生年月日
  $_SESSION['flag'][1] = 1;
  $error_flag = 1;
}
if(empty($data[2])) {//性別
  $_SESSION['flag'][2] = 1;
  $error_flag = 1;
}
if(empty($data[3]) || !filter_var($data[3],FILTER_VALIDATE_EMAIL)) {//メールアドレス
  $_SESSION['flag'][3] = 1;
  $error_flag = 1;
}
if(empty($data[4]) || mb_strlen($data[4] < 8)) {//パスワード
  $_SESSION['flag'][4] = 1;
  $error_flag = 1;
}
?>

<?php
$_SESSION['data'][0] = $data[0];
$_SESSION['data'][1] = $data[1];
$_SESSION['data'][2] = $data[2];
$_SESSION['data'][3] = $data[3];
$_SESSION['data'][4] = $data[4];
  if($error_flag == 1 ){
    header("location: create_account.php");
  }else if($error_flag == 0){
    header("location: account_confirm.php");
  }
?>
