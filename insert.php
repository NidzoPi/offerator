<?php
include('simplehtmldom_1_9_1/simple_html_dom.php');
include('dbCon.php');
$storeURL = $_GET["storeURL"];
$nameStart = strpos($storeURL, 'www.')+4;
if($nameStart == 4){
  $nameStart= $nameStart + 4;
  $nameEnd = strpos($storeURL, '.');
  $storeName = substr($storeURL, $nameStart, $nameEnd-$nameStart);
}else{
  $storeURLNoWWW = str_replace("www.","",$storeURL);
  $nameEnd = strpos($storeURLNoWWW, '.');
  $storeName = substr($storeURL, $nameStart, $nameEnd-$nameStart+4);
}
$dealSelector = $_GET["dealSelector"];

$options = array(
  'http'=>array(
    'method'=>"GET",
    'header'=>"Accept-language: en\r\n" .
              "Cookie: foo=bar\r\n" .  // check function.stream-context-create on php.net
              "User-Agent: Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.102011-10-16 20:23:10\r\n" // i.e. An iPad 
  )
);
$context = stream_context_create($options);

$html = file_get_html($storeURL, false, $context);
$sum = 0;

$conn = connectToBase();

$sql = "SELECT id, storeName, storeURL, dealSelector, deal, timeStam FROM store WHERE storeName='".$storeName."' ORDER BY id DESC LIMIT 1";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$br = 0;
//echo $html;
//Find a deal and display text
$currentImagePath = $html->find($dealSelector);
//echo sizeof($currentImagePath);
foreach ($currentImagePath as $path) {
  if($br < 1){
  $deal = $path->text();
  $deal = trim($deal);
  $deal = str_replace("'","",$deal);
  $br = $br + 1;
  }
	//echo $deal;
}
echo $deal;
echo "<br>";
$currTime = date("m/d/Y h:i a", time());
if (mysqli_num_rows($result) > 0) {
      $sql = "UPDATE store SET dealSelector='".$dealSelector."', deal='".$deal."' WHERE id=".$row['id']."";
      
    if (mysqli_query($conn, $sql)) {
        echo "Great success! Store exist, deal updated!<br>";
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
  } else {
      $sql = "INSERT INTO store (storeName, storeURL, dealSelector, deal, timeStam) VALUES ('".$storeName."','".$storeURL."','".$dealSelector."','".$deal."','".$currTime."')";
      
  if (mysqli_query($conn, $sql)) {
      echo "Great success! Store added!<br>";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
}
/*if (mysqli_query($conn, $sql)) {
  echo "Great success!";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}*/




mysqli_close($conn);

?>