<?php
session_start();
$_GET = $_SESSION;
require_once(ROOT_PATH.'Controllers/RefrigeratorController.php');
$foods = new RefrigeratorController();
$fridge = $foods ->fridge_view();
$fridge_foods = "";
foreach($fridge['forms'] as $text){
  $fridge_foods .= $text['foods_name'].',';
}
?>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="../css/index.css">
  <title>冷蔵庫管理アプリ</title>
</head>
<body class = "main_page">
  <a href="https://twitter.com/share?" class="twitter-share-button" data-text="我が家の冷蔵庫の中身はこんな感じです。<?= $fridge_foods?>" data-size="large">Tweet</a>
  <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
  <a href="logout.php" class="logout">ログアウト</a>
  <img class="cold" src="../img/cold.png">
  <main>
    <div class="main_menu">
    <div class ="main_menu_bar">
      <a href="fridge_view.php">我が家の冷蔵庫</a>
    </div>
    <div class ="main_menu_bar">
      <a href="suggest_recipe.php">今日の献立</a>
    </div>
    <div class ="main_menu_bar">
      <a href="made_recipes.php">作った料理</a>
    </div>
  </div>
  <img class="logo" src="../img/fridge.png">
</body>
</html>
