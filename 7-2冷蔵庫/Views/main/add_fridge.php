<?php
session_start();
require_once(ROOT_PATH.'Controllers/RefrigeratorController.php');
$foods = new RefrigeratorController();
$params = $foods ->foods_view();
$json_params = json_encode($params);
$_POST=$_SESSION;
?>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="../css/index.css">
  <title>冷蔵庫管理アプリ</title>
</head>

<script>
  let js_params = <?php echo $json_params;?>;
  console.log(js_params);

  function check(){
    if(window.confirm('食材を追加しますか？')){
      return true;
    }
    else{
      return false;
    }
  }
</script>

<body>
    <img class="cold" src="../img/cold.png">
    <form class="add_form" action="add_fridge_foods.php" method="post"  onSubmit = "return check()">
      <table>
          <p id="explain">食材を選択し、追加ボタンを押してください。</p>
        <tr>
          <th>ジャンル</th>
            <td>
            <select name="parentS" onchange="createChildOptions(this.form)" style="width:200px;" id="category">
                <option value="">ジャンルを選択</option>
                <option value="1">肉類</option>
                <option value="2">野菜・果実類</option>
                <option value="3">魚介類</option>
                <option value="4">乾物・海藻類</option>
                <option value="5">きのこ・山菜類</option>
                <option value="6">卵類</option>
                <option value="7">いも類</option>
                <option value="8">パン類</option>
                <option value="9">ご飯類</option>
                <option value="10">乳製品類</option>
                <option value="11">豆類</option>
                <option value="12">麺類</option>
            </select>
        </td>
    </tr>
    <tr>
        <th>食材</th>
        <td><!--表示位置--><div id="childS"></div></td>
    </tr>
    </table>
    <div class="made_list">
      <input type=submit name=food value="追加" class="button">
      <button type="button" onclick="location.href='fridge_view.php'" class="button">戻る</button>
    </div>
  </form>
  <script type="text/javascript">

    /* 子ジャンルのID名 */
    var idName="childS";
    /* 親ジャンルが変更されたら、子ジャンルを生成 */
    function createChildOptions(frmObj) {
        /* 親ジャンルを変数pObjに格納 */
        var pObj=frmObj.elements["parentS"].options;
        /* 親ジャンルのoption数 */
        var pObjLen=pObj.length;
        var htm="<select name='childS' style='width:200px;'>";
        var param_len = js_params['foods'].length;
        for(i=0; i<pObjLen; i++){
            /* 親ジャンルの選択値を取得 */
            const str = document.getElementById("category").value;
            console.log(str);
            if(pObj[i].selected>0){
                for(i=0;i<param_len;i++){
                  if(js_params['foods'][i]['category_id']==str){
                    htm+="<option value="+js_params['foods'][i]['food_id']+">"+js_params['foods'][i]['food_name']+"</option>";
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
        htm ="<select name='childS' style='width:200px;'>";
        htm+="<option value=''>"+0+"<\/option>";
        htm+="<\/select>";
        /* HTML出力 */
        document.getElementById("childS").innerHTML=htm;
    }

    /* ページ読み込み完了時に、プルダウン初期化を実行 */
    window.onload=init;
</script>
  <img class="logo" src="../img/fridge.png">
</body>
</html>
