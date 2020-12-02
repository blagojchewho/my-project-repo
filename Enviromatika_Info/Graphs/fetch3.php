<?php

//fetch3.php

include('database_connection.php');
$connect -> query("SET NAMES 'UTF8'");
if(isset($_POST["Data"]))
{
 $query = "
 SELECT * FROM vodostoi_temperatura 
 WHERE Data = '".$_POST["Data"]."' 
 ORDER BY id ASC
 ";
 $statement = $connect->prepare($query);
 $statement->execute();
 $result = $statement->fetchAll();
 foreach($result as $row)
 {
  $output[] = array(
   'Stanica'   => $row["Stanica"],
   'Merenje'  => floatval($row["Merenje"])
  );
 }
 echo json_encode($output);
}

?>