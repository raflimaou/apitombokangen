<?php

    require 'config.php';

    $response = array();

    $cek_user = mysqli_query($connection, "SELECT * FROM user WHERE role ='0'");

    while($row_user = mysqli_fetch_array($cek_user)){

        $key['id_user'] = $row_user['id_user'];
        $key['fullname'] = $row_user['fullname'];
        $key['address'] = $row_user['address'];
        $key['phone'] = $row_user['phone'];
        $key['email'] = $row_user['email'];
        $key['password'] = $row_user['password'];
        $key['role'] = $row_user['role'];

        array_push($response, $key);
    }
    echo json_encode($response);

?>