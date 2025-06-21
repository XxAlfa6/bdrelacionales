<?php
    header("content-Type: application/jason");

    if($_SERVER['REQUEST_METHOD'] !== 'GET'){
        http_response_code(405);
        echo json_encode(['error' => 'solo metodo GET es permitido']);
    }

    //conexion zoologico
    requiere 'conexion.php';

    $data =json_encode(file_get_contents('php://input'), true);

    //cambio por sus datos
    $sql="SELECT"

?>