<?php
session_start();

require "../config/conexion.php";

if (!isset($_SESSION['usNombre']) || $_SESSION['rol'] !== 'admin') {
    header("Location: index.php");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['id'])) {
    $usuario_id = $_GET['id'];

    // Eliminar registros relacionados en la tabla logs (si no se ha configurado ON DELETE CASCADE)
    $delete_logs_query = "DELETE FROM logs WHERE usuario_id = $usuario_id";
    $delete_logs_result = mysqli_query($con, $delete_logs_query);

    if ($delete_logs_result) {
        // Ahora elimina el usuario
        $delete_user_query = "DELETE FROM usuarios WHERE idUsuario = $usuario_id";
        $delete_user_result = mysqli_query($con, $delete_user_query);

        if ($delete_user_result) {
            $success_message = "Usuario eliminado correctamente";
        } else {
            $error_message = "Error al eliminar el usuario: " . mysqli_error($con);
        }
    } else {
        $error_message = "Error al eliminar los registros del log: " . mysqli_error($con);
    }

    if (isset($success_message)) {
        header("Location: ../usuarios.php?success_message=" . urlencode($success_message));
    } elseif (isset($error_message)) {
        header("Location: ../usuarios.php?error_message=" . urlencode($error_message));
    }
} else {
    header("Location: ../usuarios.php");
    exit;
}