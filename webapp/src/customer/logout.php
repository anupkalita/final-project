
<?php

// session_start();

// for user logout
if(isset($_SESSION['username'])){
    session_destroy();

    echo "<script>location.href = 'customer_login.php';</script>";

}



?>