<?php

session_start();
if(!$_SESSION['username']){
    header("location:admin_login.php");
};

    include "../db_conn.php";

        $sql = "SELECT * FROM `transaction_history` ORDER BY date_booked desc";

        $result = mysqli_query($conn, $sql);
        $arr = array();
        while($row = mysqli_fetch_assoc($result)){
            array_push($arr, $row);
        }
        echo json_encode($arr);

?>