<?php

require 'config.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $response = array();
    $head_menu = $_POST['head_menu'];

    $query = mysqli_query($connection, "SELECT b.id_product, 
    a.head_menu, 
    a.detail_menu,
    b.name,
    b.image, 
    b.price, 
    b.description,
    b.jumlah 
    FROM menu_rekomendasi a 
    JOIN product b ON b.id_product = a.detail_menu 
    WHERE a.head_menu = $head_menu
    ORDER BY b.jumlah DESC");
    while($row_product = mysqli_fetch_array($query)){
        
        $key['id_product'] = $row_product['id_product'];
        $key['head_menu'] = $row_product['head_menu'];
        $key['detail_menu'] = $row_product['detail_menu'];
        $key['description'] = $row_product['description'];
        $key['name'] = $row_product['name'];
        $key['image'] = $row_product['image'];
        $key['price'] = $row_product['price'];
        $key['jumlah'] = $row_product['jumlah'];

        array_push($response, $key);
    }
    echo json_encode($response);

}

?>