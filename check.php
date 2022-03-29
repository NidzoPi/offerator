<?php
include('simplehtmldom_1_9_1/simple_html_dom.php');
$checkName = $_GET["exStoreURL"];
$nameStart = strpos($checkName, 'www.')+4;
$nameEnd = strpos($checkName, '.com');
$checkName = substr($checkName, $nameStart, $nameEnd-$nameStart);

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

$options = array(
    'http'=>array(
      'method'=>"GET",
      'header'=>"Accept-language: en\r\n" .
                "Cookie: foo=bar\r\n" .  // check function.stream-context-create on php.net
                "User-Agent: Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.102011-10-16 20:23:10\r\n" // i.e. An iPad 
    )
  );
  $context = stream_context_create($options);
  
  $html = file_get_html($_GET["exStoreURL"], false, $context);
  $sum = 0;
  
  
  

$sql = "SELECT id, storeName, storeURL, dealSelector, deal FROM store";
$result = mysqli_query($conn, $sql);



if (mysqli_num_rows($result) > 0) {
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {
        //Find a deal and display text
        $currentImagePath = $html->find($row["dealSelector"]);
        foreach ($currentImagePath as $path) {
            $deal = $path->text();
            
        }
        $deal = trim($deal);
      if($row["storeName"] == $checkName){
          if($deal==$row["deal"]){
            echo "Store exist, great success! ID:";
            echo $row["id"];
            echo "<br>";
            echo $deal;
            echo "<br>";
            echo $row["deal"];
          }
          else{
            $sql = "UPDATE store SET deal='".$deal."' WHERE id=".$row['id']."";
            if (mysqli_query($conn, $sql)) {
                echo "Updated, great success!";
              } else {
                echo "Failed." . mysqli_error($conn);
              }
          }
          echo "<br>";
      }
    //echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
  }
} else {
  echo "0 results";
}

mysqli_close($conn);

?>