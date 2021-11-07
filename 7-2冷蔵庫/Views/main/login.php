<?php
session_start();
$_SESSION=array();
session_destroy();
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
  <div class ="link">
    <a href="index.php" id="main_menu">ホームへ戻る</a>
    <a href="forget_password.php" id="forget_pass">パスワードを忘れた方はこちら</a>
  </div>
  <form action="login_validate.php" method="POST">
    <div class ="form">
      <div class ="form_block">
        <p>ユーザーid or メールアドレス</p>
        <input type="email" name="data[]" class="input"><br>
      </div>
      <div class ="form_block">
        <p>パスワード</p>
        <input type="password" name="data[]" class="input"><br>
      </div>
      <input type="submit" name="send" value="ログイン"  class="button">
    </div>
  </form>
  <img class="logo" src="../img/fridge.png">
</body>
</html>
