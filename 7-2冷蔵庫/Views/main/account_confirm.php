<?php
session_start();
header('Content-Type: text/html; charset=UTF-8');
$data = $_SESSION['data'];
for($i=0;$i<5;$i++){
  $_SESSION['flag'][$i] = 0;
}
function h($s) {
  return htmlspecialchars($s, ENT_QUOTES, "UTF-8");
}
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
    <p id="confirm_text">この内容で登録しますか？</p>
    <div class ="create_account_form">
      <div class ="form_block">
        <p>USERNAME</p>
        <p class="vali"><?= h($data[0]);?></p>
      </div>
      <div class ="form_block">
        <p>BIRTH</p>
        <p class="vali"><?= h($data[1]);?></p>
      </div>
      <div class ="form_block">
        <p>GENDER</p>
        <p class="vali"><?= h($data[2]);?></p>
      </div>
      <div class ="form_block">
        <p>EMAIL</p>
        <p class="vali"><?= h($data[3]);?></p>
      </div>
      <div class ="form_block">
        <p>PASSWORD</p>
        <p class="vali"><?= str_repeat('*', mb_strlen(h($data[4]), 'UTF8'));?></p>
      </div>
      <div class="create_account_link">
        <a href="account_register.php" class="button">送信</a>
        <a href="create_account.php" class="button">戻る</a>
      </div>
    </div>
  </form>
  <img class="logo" src="../img/fridge.png">
</body>
</html>
