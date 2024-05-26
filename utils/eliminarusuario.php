<?php
session_start();

require "../config/conexion.php";

if (!isset($_SESSION['usNombre']) || $_SESSION['rol'] !== 'admin') {
    header("Location: index.php");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['id'])) {
    $usuario_id = $_GET['id'];

    $query = "DELETE FROM usuarios WHERE idUsuario = $usuario_id";

    $result = mysqli_query($con, $query);

    if ($result) {
        $success_message = "Usuario eliminado correctamente";
    } else {
        $error_message = "Error al eliminar el usuario";
    }

    if (isset($success_message)) {
        header("Location: ../usuarios.php?success_message=" . urlencode($success_message));
    } elseif (isset($error_message)) {
        header("Location: ../usuarios.php?error_message=" . urlencode($error_message));
    }
} else {
    header("Location: ../usuarios.php");
}
