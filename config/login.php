<?php
session_start();

require "conexion.php";

if (!empty($_POST['usNombre']) && !empty($_POST['password'])) {
    $usuario = $_POST['usNombre'];
    $password = $_POST['password'];
    $pass_sha1 = sha1($password);

    // Consulta a la base de datos
    $query = "SELECT idUsuario, rol FROM usuarios WHERE usNombre = '$usuario' AND password = '$pass_sha1'";
    $consulta = mysqli_query($con, $query);
    $array = mysqli_fetch_assoc($consulta);

    if ($array) {
        // Almacenar el ID del usuario en la sesión
        $_SESSION['idUsuario'] = $array['idUsuario'];

        // Asignación del rol
        if ($array['rol'] == 1) {
            $_SESSION['rol'] = 'admin';
        } else {
            $_SESSION['rol'] = 'capturista';
        }

        // Asignación del nombre de usuario en la sesión
        $_SESSION['usNombre'] = $usuario;
        header("location: ../dashboard.php");
        exit;
    } else {
        $error_message = "Usuario o contraseña incorrectos";
        header("Location: ../index.php?error_message=" . urlencode($error_message));
        exit;
    }
} else {
    $error_message = "Por favor, introduce tu nombre de usuario y contraseña";
    header("Location: ../index.php?error_message=" . urlencode($error_message));
    exit;
}