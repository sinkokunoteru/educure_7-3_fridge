<?php
session_start();
$_GET['id']=$_SESSION['id'];
require_once(ROOT_PATH.'Controllers/RefrigeratorController.php');
$form =  new  RefrigeratorController();
$params = $form->fridge_view();

?>
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
      <p id="confirm_text">-我が家の冷蔵庫-</p>
      <div class ="made_recipes">
            <table>
              <tr>
                <th>日時</th>
                <th>食材名</th>
                <th></th>
              </tr>
              <?php foreach($params['forms'] as $food):?>
              <tr>
                <td><p><?= $food["date"];?></p></td>
                <td><p><?= $food["foods_name"];?></p></td>
                <td>
                  <div class = delete_button>
                  <form method="post" action="delete_fridge.php?id=<?= $food['refregerator_id']?>" onSubmit="return check()">
                    <input type="hidden" name=id value="<?= $food['refregerator_id']?>">
                    <button class="bt"><a  href="delete_fridge.php?id=<?= $food['refregerator_id']?>" type="submit" name="remove" id="delete"  onClick="return check()">×</a></button>
                  </form>
                </div>
                </td>
              </tr>
            <?php endforeach;?>
            </table>
        </div>
          <div class="made_list">
            <button type="button" onclick="location.href='main_menu.php'" class="button">戻る</button>
            <button type="button" onclick="location.href='add_fridge.php'" class="button">追加</button>
          </div>
      </div>
      </form>
  <img class="logo" src="../img/fridge.png">
</body>

</html>
