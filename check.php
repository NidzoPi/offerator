<?php
include('simplehtmldom_1_9_1/simple_html_dom.php');
$checkName = $_GET["exStoreURL"];
$nameStart = strpos($checkName, 'www.')+4;
$storeURLNoWWW = str_replace("www.","",$checkName);
$nameEnd = strpos($storeURLNoWWW, '.');
$checkName = substr($checkName, $nameStart, ($nameEnd+4)-$nameStart);

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
  
  
  $sum = 0;
  
  
  

$sql = "SELECT id, storeName, storeURL, dealSelector, deal, timeStam FROM store WHERE storeName='".$checkName."' ORDER BY id DESC LIMIT 1";
$result = mysqli_query($conn, $sql);
$currTime = date("m/d/Y h:i a", time());
$counter = 0;

if (mysqli_num_rows($result) > 0) {
  $html = file_get_html($_GET["exStoreURL"], false, $context);
  echo "Results found<br>";
  $row = mysqli_fetch_assoc($result);
  
  
  $currentImagePath = $html->find($row["dealSelector"]);
        foreach ($currentImagePath as $path) {
            $deal = $path->text();
            $deal = trim($deal);
            $deal = str_replace("'","",$deal);
        }
        if($deal!=$row["deal"]){
        echo "Previous update was: ".$row['timeStam']."<br>";
        $sql = "INSERT INTO store (storeName, storeURL, dealSelector, deal, timeStam) VALUES ('".$row["storeName"]."','".$row["storeURL"]."','".$row["dealSelector"]."','".$deal."','".$currTime."')";
         
          if (mysqli_query($conn, $sql)) {
            echo "Updated NOW, great success!<br>";
    
            } else {
              echo "Failed." . mysqli_error($conn);
          
          } 
        }else{
          echo "Deal for this store is up to date!<br>";
        }
}else{
    echo "No results<br>";
}

  
  // output data of each row
  /*while($row = mysqli_fetch_assoc($result) && $counter < 1) {
        //Find a deal and display text
        $currentImagePath = $html->find($row["dealSelector"]);
        foreach ($currentImagePath as $path) {
            $deal = $path->text();
            $deal = trim($deal);
            $deal = str_replace("'","",$deal);
        }
        
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
            echo "Last deal/offer was: ".$row["deal"];
            echo "<br>";
            echo "New deal/offer is: ".$deal;
            echo "<br>";
            $sql = "INSERT INTO store (storeName, storeURL, dealSelector, deal, timeStam) VALUES ('".$storeName."','".$storeURL."','".$dealSelector."','".$deal."','".$currTime."')";
            //$counter = $counter + 1;
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

mysqli_close($conn);*/

?>