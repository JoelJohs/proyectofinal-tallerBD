<?php
session_start();

require "conexion.php";

if (!empty($_POST['usNombre']) && !empty($_POST['password'])) {
    $usuario = $_POST['usNombre'];
    $password = $_POST['password'];
    $pass_sha1 = sha1($password);

    $query = "SELECT COUNT(*) AS contar FROM usuarios WHERE usNombre = '$usuario' AND password = '$password'";
    $consulta = mysqli_query($con, $query);
    $array = mysqli_fetch_array($consulta);

    if ($array['contar'] > 0) {
        $_SESSION['usNombre'] = $usuario;
        header("location: ../dashboard.php");
        exit;
    } else {
        $error_message = "Usuario incorrecto";
        header("Location: ../index.php?error_message=" . urlencode($error_message));
        exit;
    }
} else {
    $error_message = "Por favor, introduce tu nombre de usuario y contraseña";
    header("Location: ../index.php?error_message=" . urlencode($error_message));
    exit;
}