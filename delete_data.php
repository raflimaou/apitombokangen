<?php

    require "config.php";

    if ($_SERVER['REQUEST_METHOD'] == "POST") {

        $id_product = $_POST['id_product'];

        $query_delete_product = mysqli_query($connection, "DELETE FROM product WHERE id_product = '$id_product'");
        if($query_delete_product){
                $response['value'] = 1;
                $response['message'] = "Yeayy, Data Deleted successfully!";
                echo json_encode($response);
        }
        else{
                $response['value'] = 2;
                $response['message'] = "Oops, Data Failed to Delete!"; 
                echo json_encode($response);
            }
        }

?>