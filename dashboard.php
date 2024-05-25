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
    <link rel="stylesheet" href="css/dashboard.css">
</head>

<body>
    <nav><?php require 'components/nav.php'; ?></nav>

    <main class="container">
        <h1 class="text-center">Expedientes</h1>
        <div class="card">
            <div class="card-body">
                <?php require 'components/expedientes.php'; ?>
            </div>
        </div>
    </main>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>


</html>