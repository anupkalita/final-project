<?php
session_start();

// for user logout
if(isset($_SESSION['username'])){
    session_destroy();

    echo "<script>location.href = 'admin_login.php';</script>";

}



?>