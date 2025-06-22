<?php
include 'conexion.php';

$q = $_GET['q'] ?? '';
$q = $conexion->real_escape_string($q);

// Buscar en varias columnas
$sql = "SELECT DISTINCT pais FROM medallas WHERE pais LIKE '%$q%'
        UNION
        SELECT DISTINCT municipio FROM medallas WHERE municipio LIKE '%$q%'
        UNION
        SELECT DISTINCT deporte FROM medallas WHERE deporte LIKE '%$q%'
        LIMIT 10";

$resultado = $conexion->query($sql);

$sugerencias = [];

while ($fila = $resultado->fetch_row()) {
    $sugerencias[] = $fila[0];
}

header('Content-Type: application/json');
echo json_encode($sugerencias);