<?php

    require "config.php";

    if ($_SERVER['REQUEST_METHOD'] == "POST") {

        $response = array();
        $id_category = $_POST['id_category'];
        $name = $_POST['name'];
        $description = $_POST['description'];
        $image = $_POST['image'];
        $price = $_POST['price'];
        $status = 1;
        $jumlah = 1;

        $query_cek_product = mysqli_query($connection, "SELECT * FROM product WHERE name = '$name'");
        $cek_product_result = mysqli_fetch_array($query_cek_product);

        if ($cek_product_result){

            $response['value'] = 0;
            $response['message'] = "Oops, Sorry data has been registered!";
            echo json_encode($response);

        }
        else{
            $query_insert_product = mysqli_query($connection, "INSERT INTO product VALUE
            ('', '$id_category', '$name', '$description', '$image', '$price', '$status', '$jumlah')");
            if ($query_insert_product) {
                $response['value'] = 1;
                $response['message'] = "Yeayy, Data added successfully!";
                echo json_encode($response);
            } 
            else{
                $response['value'] = 2;
                $response['message'] = "Oops, Data failed to add!"; 
                echo json_encode($response);
            }
        }
    }

?>