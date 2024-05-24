<?php

session_start();

if (!isset($_SESSION['usNombre'])) {
    echo `<script>
    alert("No existe sesion")</script>`;
    header('location: index.php');
    session_destroy();
    die();
}