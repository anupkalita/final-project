<?php

session_start();
if(!$_SESSION['username']){
    header("location:admin_login.php");
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" type="text/css" href="./style.css"> -->
    <script src="https://kit.fontawesome.com/a4d05c5536.js" crossorigin="anonymous"></script>
    <title>BookMyEvent | Admin</title>
    <style>
        <?php include "dashboard.css" ?>
    </style>
</head>
<body>
    <!-- nav-section -->
    <header id="header-section">
        <div id="logo">
            <h1>BookMyEvent</h1>
        </div>
        
        <ul id="nav">
            <li><a href="dashboard.php"><i class="fas fa-chart-line"></i></i><span>Dashboard</span></a></li>
            <li><a href="add_event.php"><i class="fas fa-calendar-week"></i></i><span>Add Event</span></a></li>
            <li><a href="admin_update_event.php"  class="active"><i class="fas fa-calendar-week"></i></i><span>Remove Event</span></a></li>
            <li><a href="admin_orders.php"><i class="fas fa-list-alt"></i>Tickets Sold</span></a></li>
            <li><a href="logout.php"><i class="fas fa-sign-out-alt"></i><span>Logout</span></a></li>
        </ul>
    </header>

    <table id="table">
        <!-- <tr id="table-head">
            <th>Food</th>
            <th>Food ID</th>
            <th>Food Name</th>
            <th>Category_ID</th>
            <th>Category Name</th>
            <th>Price</th>
            <th>Delete</th>
        </tr>
        <tr>
            <td>Centro comercial Moctezuma</td>
            <td>Francisco Chang</td>
            <td>Francisco Chang</td>
            <td>Mexico</td>
            <td>Centro comercial Moctezuma</td>
            <td>Francisco Chang</td>
            <td><button id="delete-btn">Delete</button></td>
        </tr> -->
    </table>


    <!-- Footer Section -->
    <!-- <footer>
        <p>Copyright &copy; 2021</p>
    </footer> -->

    <!-- JavaScript -->
    <script src="admin_updateEvent.js"></script>
</body>
</html>
