<?php
$conexion = new mysqli('localhost', 'victor', 'VictorCM7597!', 'medallero');
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}
?>
