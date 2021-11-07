<?php
session_start();
$_POST['id'] = $_SESSION['id'];
$_GET['id']=$_SESSION['id'];
require_once(ROOT_PATH.'Controllers/RefrigeratorController.php');
$foods = new RefrigeratorController();
$recipes = $foods ->suggest_recipe();
$fridge = $foods ->fridge_view();
$rec = array_merge($recipes['recipes']);//配列整形
$fri = array_merge($fridge['forms']);//配列整形
$recipe_genre_len = 9;


//関数部分
function same_food_counter($fri,$get_recipe){
  $get_recipe_len = count($get_recipe);
  $get_fridge_len = count($fri);
  $count_same_food = 0;
  for($i=0;$i<$get_fridge_len;$i++){
    for($j=0;$j<$get_recipe_len;$j++){
      if($fri[$i]['foods_id'] == $get_recipe[$j]['food_id']){
        $count_same_food++;
      }
    }
  }
  return $count_same_food;
}
function get_category($genre,$rec){ //済
  $recipes_len = count($rec);
  $one_genre_recipes = array();
  $array_num=0;
  for($i=0;$i<$recipes_len;$i++){
    if($genre == $rec[$i]['genre_id']){
      $one_genre_recipes[$array_num] = array_merge($rec[$i]);
      $array_num++;
    }
  }
  return $one_genre_recipes;
}
function get_one_recipe($rec,$recipe_id){//済
  $recipes_len = count($rec);
  $get_recipe = array();
  $array_num=0;
  for($i=0;$i<$recipes_len;$i++){
    if($recipe_id == $rec[$i]['recipe_id']){
      $get_recipe[$array_num] = array_merge($rec[$i]);
      $array_num++;
    }
  }
  return $get_recipe;
}

function genre_from_to($one_genre_recipes){ //済
  $len = count($one_genre_recipes);
  if(!isset($one_genre_recipes[0]['recipe_id'])){
    $from_to[0]=0;
    $from_to[1]=0;
    return $from_to;
  }
  $from = $one_genre_recipes[0]['recipe_id'];
  $to = $one_genre_recipes[$len-1]['recipe_id'];
  $from_to[0] = $from;
  $from_to[1] = $to;
  return $from_to;
}
//実行部分
$suggest_recipe_id=array();
//提案する料理のIDをカテゴリごとに取得
for($i=1;$i<=$recipe_genre_len;$i++){ //ジャンル回ループ
  $one_genre_recipes = get_category($i,$rec);
  $from_to = genre_from_to($one_genre_recipes);
  $genre = $foods->genre_recipe($i);
  $max_match = $genre_suggest_recipe = $count_same_food = 0;
  for($j=$from_to[0];$j<=$from_to[1];$j++){ //各ジャンルの最大数取得
    $recipe=get_one_recipe($rec,$j);
    $count_same_food = same_food_counter($fri,$recipe);
    if($max_match<$count_same_food){
      $max_match=$count_same_food;
      $genre_suggest_recipe = $j;
    }//一致数最大なら、値更新
  }
  //おすすめの料理がない場合ランダムな料理を提案する。
  $genre_rand=$genre[rand(0,count($genre)-1)]['id'];
  if($genre_suggest_recipe == 0){
    array_push($suggest_recipe_id,$genre_rand);
  }else{
    array_push($suggest_recipe_id,$genre_suggest_recipe);
  }
}

$recipe = array();
//取得したIDから料理名取得
for($i=0;$i<count($suggest_recipe_id);$i++){
  $one_recipe = array();
  $one_recipe = $foods ->find_one_rec_name($suggest_recipe_id[$i]);
  array_push($recipe,$one_recipe['one_food'][0]['name']);
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
    <p id="confirm_text">おすすめレシピ</p>
    <div class ="suggest_recipe">
      <ul>
        <?php for($i=0;$i<count($recipe);$i++){
                echo '<a href = "https://cookpad.com/search/'.$recipe[$i].'" target="_blank">'.'<li>'.$recipe[$i].'</li>'.'</a>';
              }
        ?>
      </ul>
    </div>
      <button type="button" onclick="location.href='main_menu.php'" class="button" id="button_position">メインメニュー</button>
  </form>
  <img class="logo" src="../img/fridge.png">
</body>
</html>
