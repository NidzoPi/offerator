<?php
include('simplehtmldom_1_9_1/simple_html_dom.php');
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "scraperdb";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
$storeURL = $_GET["storeURL"];
$nameStart = strpos($storeURL, 'www.')+4;
$storeURLNoWWW = str_replace("www.","",$storeURL);
$nameEnd = strpos($storeURLNoWWW, '.');
$storeName = substr($storeURL, $nameStart, ($nameEnd+4)-$nameStart);
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


//Find a deal and display text
$currentImagePath = $html->find($dealSelector);
//echo sizeof($currentImagePath);
foreach ($currentImagePath as $path) {
  $deal = $path->text();
  $deal = trim($deal);
  $deal = str_replace("'","",$deal);
	echo $deal;
}
echo "<br>";


$sql = "INSERT INTO store (storeName, storeURL, dealSelector, deal)
VALUES ('".$storeName."','".$storeURL."','".$dealSelector."','".$deal."')";
if (mysqli_query($conn, $sql)) {
  echo "Great success!";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);

?>