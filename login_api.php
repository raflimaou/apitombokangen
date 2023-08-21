<?php

    require "config.php";

    if ($_SERVER['REQUEST_METHOD'] == "POST") {

        $response = array();
        $email = $_POST['email'];
        $password = $_POST['password'];

        $query_cek_user = mysqli_query($connection, "SELECT * FROM user WHERE email = '$email' && password = '$password'");
        $cek_user_result = mysqli_fetch_array($query_cek_user);

        if ($cek_user_result){

            $query_login = mysqli_query($connection, "SELECT * FROM user WHERE email = '$email' && password = '$password'");
            if ($query_login) {
                $response['value'] = 1;
                $response['message'] = "Yeayy, Login is successful.";
                $response['user_id'] = $cek_user_result['id_user'];
                $response['fullname'] = $cek_user_result['fullname'];
                $response['address'] = $cek_user_result['address'];
                $response['role'] = $cek_user_result['role'];
                $response['phone'] = $cek_user_result['phone'];
                $response['email'] = $cek_user_result['email'];
                $response['password'] = $cek_user_result['password'];
                $response['message'] = "Yeayy, Login is successful.";
                echo json_encode($response);
            } 
            else{
                $response['value'] = 2;
                $response['message'] = "Oops, Login failed!";
                echo json_encode($response);
            }

        }
        else{
            $response['value'] = 2;
            $response['message'] = "Oops, Data is not registered!";
            echo json_encode($response);
        }
    }

?>