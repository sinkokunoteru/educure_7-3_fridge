
<?php
session_start();
$error_message = ["氏名は必須入力です。10文字以内でご入力ください",
                  "生年月日は必須入力です。",
                  "性別は必須入力です。",
                  "メールアドレスは正しくご入力ください。",
                  "パスワードは8文字以上で入力してください。"];
$username = 0;
$date = 0;
$gender = 0;
$email = 0;
$password = 0;

if(!empty($_SESSION['flag'][0])){
  $username = $_SESSION['flag'][0];
}
if(!empty($_SESSION['flag'][1])){
  $date = $_SESSION['flag'][1];
}
if(!empty($_SESSION['flag'][2])){
  $gender = $_SESSION['flag'][2];
}
if(!empty($_SESSION['flag'][3])){
  $email = $_SESSION['flag'][3];
}
if(!empty($_SESSION['flag'][4])){
  $password = $_SESSION['flag'][4];
}
$_SESSION['edit']=2;
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
  <form action="validate.php" method="POST">
    <div class ="create_account_form">
      <div class ="form_block">
        <p>username</p>
        <input type="username" name="data[]" class="input" value="<?php if(!empty($_SESSION['data'][0])){echo $_SESSION['data'][0];}?>"><br>
        <?php if($username==1){echo '<h1>'.$error_message[0].'</h1>';}?>
      </div>
      <div class ="form_block">
        <p>birth</p>
        <input type="date" name="data[]" class="input" value="<?php if(!empty($_SESSION['data'][1])){echo $_SESSION['data'][1];}?>"><br>
        <h1><?php if($date==1){echo $error_message[1];}?></h1>
      </div>
      <div class ="form_block">
        <p>gender</p>
        <select name="data[]"><br>
          <option value="null">性別を選択してください</option>
          <option value="true">男</option>
          <option value="false">女</option>
        </select>
        <h1><?php if($gender==1){echo $error_message[2];}?></h1>
      </div>
      <div class ="form_block">
        <p>email</p>
        <input type="email" name="data[]" class="input" value="<?php if(!empty($_SESSION['data'][3])){echo $_SESSION['data'][3];}?>"><br>
        <h1><?php if($email==1){echo $error_message[3];}?></h1>
      </div>
      <div class ="form_block">
        <p>password</p>
        <input type="password" name="data[]" class="input" value="<?php if(!empty($_SESSION['data'][4])){echo $_SESSION['data'][4];}?>"><br>
        <h1><?php if($password==1){echo $error_message[4];}?></h1>
      </div>
      <div class="create_account_link">
        <input type="submit" name="send" value="送信"  class="button">
        <a href="index.php" class="button">戻る</a>
      </div>
      </div>
  </form>
  <img class="logo" src="../img/fridge.png">
</body>
</html>
