<?php

    $host = "localhost";
    $username = "root";
    $password = "";
    $db_name = "db_tombokangen";
    $connection = mysqli_connect($host, $username, $password, $db_name);

    if(!$connection ){

        echo "sukses";

    }

?>