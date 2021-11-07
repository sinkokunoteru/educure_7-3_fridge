<?php
session_start();
require_once(ROOT_PATH.'Controllers/RefrigeratorController.php');
$foods = new RefrigeratorController();
$params = $foods ->recipes_list();
$json_params = json_encode($params);
$_POST=$_SESSION;
?>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="utf-8">
  <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/index.css">
  <title>冷蔵庫管理アプリ</title>
</head>
<script>
$(function() {
  $('input[type=file]').after('<span></span>');

  // アップロードするファイルを選択
  $('input[type=file]').change(function() {
    var file = $(this).prop('files')[0];

    // 画像以外は処理を停止
    if (! file.type.match('image.*')) {
      // クリア
      $(this).val('');
      $('span').html('');
      return;
    }

    // 画像表示
    var reader = new FileReader();
    reader.onload = function() {
      var img_src = $('<img>').attr('src', reader.result);
      $('span').html(img_src);
    }
    reader.readAsDataURL(file);
  });
});

</script>
<script>
  let js_params = <?php echo $json_params;?>;
  console.log(js_params);

  function check(){
    if(window.confirm('レシピを追加しますか？')){
      return true;
    }
    else{
      return false;
    }
  }
</script>

<body>
    <img class="cold" src="../img/cold.png">

    <form class="add_form" action="add_made_recipes_reg.php" method="post" onSubmit = "return check()" enctype="multipart/form-data">
      <table>
            <p id="explain">作成したレシピを選択して、追加ボタンを押してください。</p>
            <tr>
              <th>親ジャンル</th>
              <td>
                <select name="parentS" onchange="createChildOptions(this.form)" style="width:200px;" id="genre">
                <option value="">親ジャンルを選択して下さい</option>
                <option value="1">和食</option>
                <option value="2">洋食</option>
                <option value="3">中華</option>
                <option value="4">フレンチ</option>
                <option value="5">イタリアン</option>
                <option value="6">スパニッシュ</option>
                <option value="7">アジアン</option>
                <option value="8">エスニック</option>
                <option value="9">デザート</option>
            </select>
        </td>
    </tr>
    <tr>
        <th>料理名</th>
        <td><!--表示位置--><div id="recipe_genre"></div></td>
    </tr>
    <tr>
      <th>画像のアップロード</th>
      <td><input type="file" name ="image"></td>
    </table>
    <div class="made_list">
      <input type=submit name=food value="追加" class="button">
      <button type="button" onclick="location.href='made_recipes.php'" class="button">戻る</button>
    </div>
  </form>
  <script type="text/javascript">

    /* 子ジャンルのID名 */
    var idName="recipe_genre";
    /* 親ジャンルが変更されたら、子ジャンルを生成 */
    function createChildOptions(frmObj) {
        /* 親ジャンルを変数pObjに格納 */
        var pObj=frmObj.elements["parentS"].options;
        /* 親ジャンルのoption数 */
        var pObjLen=pObj.length;
        var htm="<select name='recipe_genre' style='width:200px;'>";
        var param_len = js_params['recipes'].length;
        for(i=0; i<pObjLen; i++){
            /* 親ジャンルの選択値を取得 */
            const str = document.getElementById("genre").value;
            console.log(str);
            if(pObj[i].selected>0){
                for(i=0;i<param_len;i++){
                  if(js_params['recipes'][i]['genre_id']==str){
                    htm+="<option value="+js_params['recipes'][i]['recipe_id']+">"+js_params['recipes'][i]['recipe_name']+"</option>";
                  }
                }
            }
        }
        htm+="<\/select>";
        /* HTML出力 */
        document.getElementById(idName).innerHTML=htm;
    }

    /* onLoad時にプルダウンを初期化 */
    function init(){
        htm ="<select name='recipe_genre' style='width:200px;'>";
        htm+="<option value=''>"+0+"<\/option>";
        htm+="<\/select>";
        /* HTML出力 */
        document.getElementById("recipe_genre").innerHTML=htm;
    }

    /* ページ読み込み完了時に、プルダウン初期化を実行 */
    window.onload=init;
</script>
  <img class="logo" src="../img/fridge.png">
</body>
</html>
