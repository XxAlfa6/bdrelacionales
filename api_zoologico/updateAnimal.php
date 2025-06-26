<?php
header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] !== 'PUT') {
    http_response_code(405);
    echo json_encode(['error' => 'Solo metodo PUT es permitido']);
    exit();
}

require 'conexionZoo.php';

$input = json_decode(file_get_contents('php://input'), true);
$ID = intval($input['ID']);
$ESPECIE = $conn->real_escape_string($input['ESPECIE']);
$PESOKG = intval($input['PESOKG']);
$DESCRIPCION = $conn->real_escape_string($input['DESCRIPCION']);
$TIPO = $conn->real_escape_string($input['TIPO']);

$query = "UPDATE animales SET ESPECIE = ?, PESOKG = ?, DESCRIPCION = ?, TIPO = ?, ID = ?";

$st = $conn->prepare($query);

if (!$st) {
    http_response_code(500);
    echo json_encode(["error" => "Error en la consulta: " . $conn->error]);
    exit();
}

$st->bind_param("sissi", $ESPECIE, $PESOKG, $DESCRIPCION, $TIPO, $ID);

if ($st->execute()) {
    if ($st->affected_rows > 0) {
        echo json_encode(["message" => "El animal ha sido actualizado correctamente"]);
    } else {
        http_response_code(404);
        echo json_encode(["error" => "No se encontro el animal con la id: $ID"]);
    }
} else {
    http_response_code(500);
    echo json_encode(["error" => "ERROR al ejecutar: " . $st->error]);
}

$st->close();
$conn->close();
?>
