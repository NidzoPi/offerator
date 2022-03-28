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
$nameEnd = strpos($storeURL, '.com');
$storeName = substr($storeURL, $nameStart, $nameEnd-$nameStart);
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


//selector of coupon text string
$currentImagePath = $html->find($dealSelector)[0];
// substring coupon code
echo ($currentImagePath);

/*
$sql = "INSERT INTO store (storeName, storeURL, dealSelector, deal)
VALUES ($storeName, $storeURL, $dealSelector)";
if (mysqli_query($conn, $sql)) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);*/
?>