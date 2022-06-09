<?php

session_start();
if(!$_SESSION['username']){
    header("location:admin_login.php");
};

    include "../db_conn.php";
    
    // object to store required data
    $obj = new stdClass;

    // Ṭo fetch total no. of customers
    $sql = "SELECT `customer_id` FROM `customer_details`";
    $result = mysqli_query($conn, $sql);

    $rows = mysqli_num_rows($result);

    $obj->total_customer = "$rows";

    // Ṭo fetch total no. of orders
    $sql = "SELECT transaction_id FROM `transaction_history`";
    $result = mysqli_query($conn, $sql);

    $rows = mysqli_num_rows($result);

    $obj->total_orders = "$rows";

    // Ṭo fetch total no. of Food-items
    $sql = "SELECT event_id FROM `event_details`";
    $result = mysqli_query($conn, $sql);

    $rows = mysqli_num_rows($result);

    $obj->total_event = "$rows";

    // Ṭo fetch total revenue
    $sql = "SELECT total_price FROM `transaction_history` WHERE `status` = 'delivered'";
    $result = mysqli_query($conn, $sql);

    $get_revenue = 0;

    while($rows = mysqli_fetch_array($result)){
        $get_revenue = $get_revenue + $rows['total_price'];
    }

    $obj->revenue = "$get_revenue";


    echo json_encode($obj);

?>