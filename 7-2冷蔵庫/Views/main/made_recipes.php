<?php
session_start();
$_GET['id']=$_SESSION['id'];
require_once(ROOT_PATH.'Controllers/RefrigeratorController.php');
$form =  new  RefrigeratorController();
$params = $form->made_recipe_view();
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
  <div class = "views">
    <form>
      <p id="confirm_text">-作った料理一覧-</p>
      <div class ="made_recipes">
            <table>
              <tr>
                <th>日時</th>
                <th>食材名</th>
                <th></th>
              </tr>

              <?php foreach($params['forms'] as $recipes):?>
              <tr>
                <td><p><?= $recipes["date"];?></p></td>
                <td><p><?= $recipes["recipe_name"];?></p></td>
                <td>
                  <div class = delete_button>
                  <form method="post" action="delete_made_recipe.php?id=<?= $recipes['made_id']?>">
                    <input type="hidden" name="id" value="<?= $recipes['made_id']?>">
                   <button class = "bt"><a  href="delete_made_recipe.php?id=<?= $recipes['made_id']?>" type="submit" name="remove" id="delete"  onClick="return check()">×</a></button>
                  </form>
                </div>
                </td>
              </tr>
            <?php endforeach;?>
            </table>
          </div>
          <div class="made_list">
            <button type="button" onclick="location.href='main_menu.php'" class="button">戻る</button>
            <button type="button" onclick="location.href='add_made_recipes.php'" class="button">追加</button>
          </div>
        </div>
    </form>
  <img class="logo" src="../img/fridge.png">
</body>
<script type = "text/javascript">
function check(){
  if(window.confirm('削除しますか？')){
    return true;
  }
  else{
    return false;
  }
}
</script>
</html>
