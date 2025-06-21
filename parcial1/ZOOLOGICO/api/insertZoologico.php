<?php
    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'POST'){
    http_response_code(405);
    echo json_encode(['error'=> 'Solo metodo POST es permitido']);
    }

    //conectar a la BD  sakila
    require 'conexion.php';

    $data = json_decode(file_get_contents('php://input'), true);
    $tipo= $data['tipo'];
    $edad = $data['edad'];
    $comida = $data['comida'];
    $peso = $data['peso'];
    $animal = $data['animal']

    $query = $conn->prepare("INSERT INTO zoologico (tipo, edad, comida, peso, animal) VALUES (?,?)");

    IF(!$query){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error"]);
        exit;
    }

    $query->bind_param("ss", $tipo, $edad, $comida, $peso, $animal);

    if($query->execute()){
    echo json_encode(["mensaje" => "insertado correctamente", "zoologico=> $query->insert_id]);
    }else{
        http_response_code(500);
        echo json_encode(["error" => "Fallo la inserción", $query->error]);
    }

    $query->close();
    $conn->close();

?>