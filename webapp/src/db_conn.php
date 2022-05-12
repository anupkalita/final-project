<?php

// Connect Database
$servername = "sql_container";
$username = "root";
$password = getenv("DB_PASSWORD");
$database = "bme";

$conn = mysqli_connect($servername,$username,$password,$database);

if(!$conn){
  die("Connection Failed: ". mysqli_connect_error());
}else{
    // echo "success";
}

?>