<?php

session_start();
if(!$_SESSION['username']){
    header("location:admin_login.php");
};

    include "../db_conn.php";

        
    // Process to delete Event item
    if(isset($_POST['Event_id'])){
        $Event_id = $_POST['Event_id'];

        $sql = "DELETE FROM `Event_details` WHERE `Event_id` = '$Event_id'";

        mysqli_query($conn, $sql);
        
    }

    // Process to fetch all Event items
    else{
        $sql = "SELECT * FROM event_details";

        $result = mysqli_query($conn, $sql);
        $arr = array();
        while($row = mysqli_fetch_assoc($result)){
            array_push($arr, $row);
        }

        echo json_encode($arr);
    }

?>