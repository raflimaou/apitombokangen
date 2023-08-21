<?php

    require "config.php";

    if ($_SERVER['REQUEST_METHOD'] == "POST") {

        $response = array();
        $id_user = $_POST['id_user'];
        $fullname = $_POST['fullname'];
        $address = $_POST['address'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $role = 0;

        $query_edit_user = mysqli_query($connection, "UPDATE user SET id_user = '$id_user', fullname = '$fullname', address = '$address', phone = '$phone', email = '$email', password = '$password' WHERE id_user = '$id_user'");
        if($query_edit_user){
                $response['value'] = 1;
                $response['message'] = "Yeayy, Data Edited successfully!";
                echo json_encode($response);
        }
        else{
                $response['value'] = 2;
                $response['message'] = "Oops, Data failed to Edit!"; 
                echo json_encode($response);
            }
        }

?>