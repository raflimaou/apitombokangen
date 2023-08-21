<?php

require "config.php";

    $response = array();

    $userID = $_GET['id_user'];

    $selectCart = mysqli_query($connection, "SELECT * FROM user WHERE id_user = '$userID'");

    while($row = mysqli_fetch_array($selectCart)){

        $key['id_user'] = $row['id_user'];
        $key['fullname'] = $row['fullname'];
        $key['address'] = $row['address'];
        $key['phone'] = $row['phone'];
        $key['email'] = $row['email'];
        $key['password'] = $row['password'];
        $key['role'] = $row['role'];

        array_push($response, $key);
    }
    echo json_encode($response);

?>