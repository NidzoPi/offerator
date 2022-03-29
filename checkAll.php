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
  
  
  

$sql = "SELECT id, storeName, storeURL, dealSelector, deal FROM store";
$result = mysqli_query($conn, $sql);



if (mysqli_num_rows($result) > 0) {
    echo "<table border='1'>";
    echo "<thead>";
    echo "<th>Store name</th>";
    echo "<th>Store URL</th>";
    echo "<th>Last deal</th>";
    echo "<th>Current deal</th>";
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {
      echo "<tr>";
        
    $html = file_get_html($row["storeURL"], false, $context);
        
        //Find a deal and display text
        $currentImagePath = $html->find($row["dealSelector"]);
        foreach ($currentImagePath as $path) {
            $deal = $path->text();
            $deal = trim($deal);
            $deal = str_replace("'","",$deal);
        }
        
        echo "<td>".$row["storeName"]."</td>";
        echo "<td>".$row["storeURL"]."</td>";
        echo "<td>".$row["deal"]."</td>";
          if($deal==$row["deal"]){
            echo "<td style='background-color:#00FF00'>".$deal."</td>";
          }
          else{
            echo "<td style='background-color:#FF0000'>".$deal."</td>";
            $sql = "UPDATE store SET deal='".$deal."' WHERE id=".$row['id']."";
            if (mysqli_query($conn, $sql)) {
                echo "Updated, great success!";
              } else {
                echo "Failed." . mysqli_error($conn);
              }
          }
          echo "<br>";

        echo "</tr>";
    //echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
  }
    echo "</table>";
} else {
  echo "0 results";
}

mysqli_close($conn);
?>