<?php
    header("Content-Type: application/json");


    require 'conexionZoo.php';

    $sql = "SELECT * FROM animales";
    $result = $conn->query($sql);

    $animales = [];

    if($result && $result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            $animales[] = $row;
        }
    }

    $conn->close();

    header("Content-Type: application/json");
    echo json_encode($animales);
?>