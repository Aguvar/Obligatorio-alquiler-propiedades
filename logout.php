<?php
    
    unset($_COOKIE["loggedUser"]);
    setcookie("loggedUser", "", time() - 3600,"/");
    header("Location: index.php");
    exit();

?>