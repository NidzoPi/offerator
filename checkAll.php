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

$sql = "SELECT * FROM store WHERE id IN (SELECT MAX(id) FROM store GROUP BY storeName);";
$result = mysqli_query($conn, $sql);

$currTime = date("m/d/Y h:i a", time());



if (mysqli_num_rows($result) > 0) {
  
    echo "<table border='1'>";
    echo "<thead>";
    echo "<th>Store name</th>";
    echo "<th>Store URL</th>";
    echo "<th>Last deal</th>";
    echo "<th>Current deal</th>";
    echo "<th>Last edit</th>";
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {
    $br = 0;
        echo "<tr>";
        
    $html = file_get_html($row["storeURL"], false, $context);
        
        //Find a deal and display text
        $currentImagePath = $html->find($row["dealSelector"]);
        foreach ($currentImagePath as $path) {
          if($br < 1){
            $deal = $path->text();
            $deal = trim($deal);
            $deal = str_replace("'","",$deal);
            $br = $br + 1;
          }
        }
        
        echo "<td>".$row["storeName"]."</td>";
        echo "<td>".$row["storeURL"]."</td>";
        echo "<td>".$row["deal"]."</td>";
          if($deal==$row["deal"]){
            echo "<td style='background-color:#00FF00'>".$deal."</td>";
          }
          else{
            echo "<td style='background-color:#FF0000'>".$deal."</td>";
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
                echo "Updated, great success!";
              } else {
                echo "Failed." . mysqli_error($conn);
              }
          }
        echo "<td>".$row["timeStam"]."</td>";
          //echo "<br>";

        echo "</tr>";
    //echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
  }
    echo "</table>";
} else {
  echo "0 results";
}

mysqli_close($conn);
?>