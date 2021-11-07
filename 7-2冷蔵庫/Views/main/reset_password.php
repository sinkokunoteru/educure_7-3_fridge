<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="../css/index.css">
  <title>冷蔵庫管理アプリ</title>
</head>
<body>
  <img class="cold" src="../img/cold.png">
  <form action="validate.php" method="POST">
    <div class ="form">
      <div class ="form_block">
        <p>新しいパスワード</p>
        <input type="email" name="id" class="input"><br>
      </div>
      <div class ="form_block">
        <p>パスワードを再入力</p>
        <input type="password" name="password" class="input"><br>
      </div>
      <input type="submit" name="send" value="送信"  class="button">
    </div>
  </form>
  <img class="logo" src="../img/fridge.png">
</body>
</html>
