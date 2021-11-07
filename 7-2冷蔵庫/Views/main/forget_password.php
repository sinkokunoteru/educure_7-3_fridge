<?php
session_start();
$_SESSION['flag']=array();
var_dump($_SESSION);
?>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="../css/index.css">
  <title>冷蔵庫管理アプリ</title>
</head>
<body>
  <img class="cold" src="../img/cold.png">
  <form action="forget_mail_birth_check.php" method="POST">
    <div class ="form">
      <div class ="form_block">
        <p>メールアドレス</p>
        <input type="email" name="email" class="input"><br>
      </div>
      <div class ="form_block">
        <p>生年月日</p>
        <input type="date" name="date" class="input"><br>
      </div>
      <input type="submit" name="send" value="送信"  class="button">
    </div>
  </form>
  <img class="logo" src="../img/fridge.png">
</body>
</html>
