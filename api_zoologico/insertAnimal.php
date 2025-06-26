<?php
    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'POST'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo POST es permitido']);
    }



    require 'conexionZoo.php';

    $data = json_decode(file_get_contents('php://input'), true);
    $ESPECIE = $data['ESPECIE'];
    $PESOKG = intval($data['PESOKG']);
    $DESCRIPCION = $data['DESCRIPCION'];
    $TIPO = $data['TIPO'];


    $query = $conn->prepare("INSERT INTO animales (ESPECIE, DESCRIPCION, PESOKG, TIPO) VALUES (?, ?, ?, ?)");

    if(!$query){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error"]);
        exit;
    }

    $query->bind_param("ssis", $ESPECIE, $DESCRIPCION, $PESOKG, $TIPO);

    if($query->execute()){
        echo json_encode(["mensaje" => "Animal insertado correctamente", "ID" => $query->insert_id]);
    } else{
        http_response_code(500);
        echo json_encode(["error" => "Fallo la insercion" . $query->error]);
    }
    $query->close();
    $conn->close();

?>