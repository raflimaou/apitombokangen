<?php

    require "config.php";

    if ($_SERVER['REQUEST_METHOD'] == "POST") {

        $response = array();
        $fullname = $_POST['fullname'];
        $address = $_POST['address'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $role = 0;

        $query_cek_user = mysqli_query($connection, "SELECT * FROM user WHERE email = '$email'");
        $cek_user_result = mysqli_fetch_array($query_cek_user);

        if ($cek_user_result){

            $response['value'] = 0;
            $response['message'] = "Oops, Sorry data has been registered!";
            echo json_encode($response);

        }
        else{
            $query_insert_user = mysqli_query($connection, "INSERT INTO user VALUE
            ('', '$fullname', '$address', '$phone', '$email', '$password', '$role')");
            if ($query_insert_user) {
                $response['value'] = 1;
                $response['message'] = "Yeay, Registration is Successful!";
                echo json_encode($response);
            } 
            else{
                $response['value'] = 2;
                $response['message'] = "Oops, Registration is failed!"; 
                echo json_encode($response);
            }
        }
    }

?>