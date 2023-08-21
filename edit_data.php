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
        $id_product = $_POST['id_product'];

        $query_edit_product = mysqli_query($connection, "UPDATE product SET id_category = '$id_category', name = '$name', description = '$description', image = '$image', price = '$price' WHERE id_product = '$id_product'");
        if($query_edit_product){
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