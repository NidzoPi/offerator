<?php
include('simplehtmldom_1_9_1/simple_html_dom.php');
include('dbCon.php');

require __DIR__ . '/vendor/autoload.php';

$client = new \Google_Client();
$client->setApplicationName('Google Sheets and PHP');
$client->setScopes([\Google_Service_Sheets::SPREADSHEETS]);
$client->setAccessType('offline');
$client->setAuthConfig(__DIR__ . '/credentials.json');
$service = new Google_Service_Sheets($client);
$spreadsheetId = '1ohPZRbD_8hJ4V17isFAHhxz0QG-6S4_s_U84cMzRs_4';



$storeURL = $_GET["storeURL"];
$nameStart = strpos($storeURL, 'www.')+4;
if($nameStart == 4){
  $nameStart = $nameStart + 4;
  $nameEnd = strpos($storeURL, '.');
  if(strpos($storeURL, 'shop.') !== false){
    $storeURLTemp = $storeURL;
    $storeURL = str_replace("shop.", "", $storeURL);
    $nameEnd = strpos($storeURL, '.');
  }
  $storeName = substr($storeURL, $nameStart, $nameEnd-$nameStart);
  if(isset($storeURLTemp) === true){
  $storeURL = $storeURLTemp;
  }
}else{
  $storeURLNoWWW = str_replace("www.","",$storeURL);
  $nameEnd = strpos($storeURLNoWWW, '.');
  if(strpos($storeURL, 'shop.') !== false){
    $storeURLTemp = $storeURL;
    $storeURL = str_replace("shop.", "", $storeURL);
    $nameEnd = strpos($storeURL, '.');
  }
  $storeName = substr($storeURL, $nameStart, $nameEnd-$nameStart+4);
  if(isset($storeURLTemp) === true){
    $storeURL = $storeURLTemp;
  }
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
  
  
  
$conn = connectToBase();
$sql = "SELECT id, storeName, storeURL, dealSelector, deal, timeStam FROM store WHERE storeName='".$checkName."' ORDER BY id DESC LIMIT 1";
$result = mysqli_query($conn, $sql);
$currTime = date("m/d/Y h:i a", time());
$counter = 0;

if (mysqli_num_rows($result) > 0) {
  $html = file_get_html($_GET["exStoreURL"], false, $context);
  echo "Results found<br>";
  $row = mysqli_fetch_assoc($result);
  $br = 0;
  
  
  $currentImagePath = $html->find($row["dealSelector"]);
        foreach ($currentImagePath as $path) {
          if($br < 1){
            $deal = $path->text();
            $deal = trim($deal);
            $deal = str_replace("'","",$deal);
            $br = $br + 1;
          }
        }
        if($deal!=$row["deal"]){
        echo "Previous update was: ".$row['timeStam']."<br>";
        $sql = "INSERT INTO store (storeName, storeURL, dealSelector, deal, timeStam) VALUES ('".$row["storeName"]."','".$row["storeURL"]."','".$row["dealSelector"]."','".$deal."','".$currTime."')";

        $range = "Sheet1";
        $values = [
          [$row["storeName"], $row["storeURL"], $row["dealSelector"], $deal, $currTime],
        ];
        $body = new Google_Service_Sheets_ValueRange([
          'values' => $values
        ]);
        $params = [
          'valueInputOption' => 'RAW'
        ];
        $insert = [
          "insertDataOption" => "INSERT_ROWS"
        ];
        $res = $service->spreadsheets_values->append(
          $spreadsheetId,
          $range,
          $body,
          $params,
          $insert
        );

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