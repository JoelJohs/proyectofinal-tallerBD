<?php
session_start();

require "config/conexion.php";

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $expediente_id = $_GET['id'];

    $query = "
        SELECT e.*, u.Descripcion AS UbicacionDescripcion, l.LicNombre AS LicenciaturaNombre
        FROM expedientes e
        JOIN ubicfisica u ON e.ubicacion = u.idUbicacion
        JOIN licenciatura l ON e.Licenciatura = l.idLic
        WHERE e.id = $expediente_id
    ";
    $result = mysqli_query($con, $query);

    if (mysqli_num_rows($result) > 0) {
        $expediente = mysqli_fetch_assoc($result);
    } else {
        $error_message = "No se encontró ningún expediente con el ID proporcionado.";
    }
} else {
    $error_message = "ID de expediente no válido.";
}

mysqli_close($con);
?>


<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles del Expediente</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/detalles.css">
</head>

<body>
    <?php require "components/nav.php"; ?>
    <div class="container">
        <?php if (isset($error_message)) : ?>
        <div class="alert alert-danger">
            <?php echo $error_message; ?>
        </div>
        <?php else : ?>
        <h1 class="text-center">Detalles del Expediente</h1>
        <div class="card mb-4">
            <div class="card-header">
                Expediente Nº: <?php echo $expediente['id']; ?>
            </div>
            <div class="card-body">
                <h5 class="card-title">
                    <?php echo $expediente['Nombre'] . ' ' . $expediente['Apellido1'] . ' ' . $expediente['Apellido2']; ?>
                </h5>
                <h6 class="card-subtitle"><?php echo $expediente['LicenciaturaNombre']; ?></h6>
                <hr>

                <div class="section-title">Información Personal</div>
                <p class="card-text"><strong>Fecha de Nacimiento:</strong> <?php echo $expediente['FechaNac']; ?></p>
                <p class="card-text"><strong>Sexo:</strong> <?php echo $expediente['Sexo']; ?></p>

                <div class="section-title">Información Académica</div>
                <p class="card-text"><strong>Ingreso:</strong> <?php echo $expediente['Ingreso']; ?></p>
                <p class="card-text"><strong>Egreso:</strong> <?php echo $expediente['Egreso']; ?></p>
                <p class="card-text"><strong>Grupo:</strong> <?php echo $expediente['Grupo']; ?></p>
                <p class="card-text"><strong>Último Semestre:</strong> <?php echo $expediente['UltimoSemestre']; ?></p>
                <p class="card-text"><strong>Titulado:</strong> <?php echo $expediente['Titulado'] ? 'Sí' : 'No'; ?></p>

                <div class="section-title">Ubicación</div>
                <p class="card-text"><strong>Ubicación:</strong> <?php echo $expediente['UbicacionDescripcion']; ?></p>

                <div class="section-title">Información de Captura</div>
                <p class="card-text"><strong>Fecha de Captura:</strong> <?php echo $expediente['FechaCaptura']; ?></p>
                <p class="card-text"><strong>Usuario de Captura:</strong> <?php echo $expediente['UsCaptura']; ?></p>
            </div>
        </div>

        <?php if ($_SESSION['rol'] == 'admin') : ?>
        <div class="d-flex justify-content-end">
            <a href="editar.php?id=<?php echo $expediente_id; ?>" class="btn btn-primary mr-2">Editar</a>
            <button class="btn btn-danger"
                onclick="confirmarEliminacion(<?php echo $expediente_id; ?>)">Eliminar</button>
        </div>
        <?php endif; ?>
        <?php endif; ?>
    </div>

    <script>
    function confirmarEliminacion(id) {
        if (confirm('¿Estás seguro de que deseas eliminar este expediente?')) {
            window.location.href = 'utils/eliminarexpediente.php?id=' + id;
        }
    }
    </script>
</body>

</html>