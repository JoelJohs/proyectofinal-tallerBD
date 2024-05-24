<?php

session_start();

if (!isset($_SESSION['usNombre'])) {
    echo `<script>
    alert("No existe sesion")</script>`;
    header('location: index.php');
    session_destroy();
    die();
}
?>


<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <?php require 'components/nav.php'; ?>
</body>