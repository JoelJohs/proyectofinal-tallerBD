<?php
session_start();

require "config/conexion.php";

if (!isset($_SESSION['usNombre']) || $_SESSION['rol'] !== 'admin') {
    header("Location: index.php");
    exit;
}

$success_message = isset($_GET['success_message']) ? $_GET['success_message'] : '';

$query = "SELECT usuarios.idUsuario, usuarios.nombre, usuarios.apellidos, usuarios.usNombre, usuarios.email, roles.descripcion AS rol
          FROM usuarios
          INNER JOIN roles ON usuarios.rol = roles.idRol";

$result = mysqli_query($con, $query);

if ($result) {
    $usuarios = mysqli_fetch_all($result, MYSQLI_ASSOC);
} else {
    $error_message = "Error al obtener la lista de usuarios.";
}

mysqli_close($con);
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuarios</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/usuarios.css">
</head>

<body>

    <?php require "components/nav.php" ?>

    <div class="container">

        <h1>Lista de Usuarios</h1>

        <?php if (isset($_GET['success_message'])) : ?>
        <div class="alert alert-success">
            <?php echo $_GET['success_message']; ?>
        </div>
        <?php elseif (isset($_GET['error_message'])) : ?>
        <div class="alert alert-danger">
            <?php echo $_GET['error_message']; ?>
        </div>
        <?php endif; ?>

        <?php if (isset($error_message)) : ?>
        <div class="alert alert-danger">
            <?php echo $error_message; ?>
        </div>
        <?php else : ?>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Nombre de Usuario</th>
                    <th>Email</th>
                    <th>Rol</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($usuarios as $usuario) : ?>
                <tr>
                    <td><?php echo $usuario['nombre']; ?></td>
                    <td><?php echo $usuario['apellidos']; ?></td>
                    <td><?php echo $usuario['usNombre']; ?></td>
                    <td><?php echo $usuario['email']; ?></td>
                    <td><?php echo $usuario['rol']; ?></td>
                    <td>

                        <a href="usuarios/editar.php?id=<?php echo $usuario['idUsuario']; ?>"
                            class="btn btn-primary">Editar</a>
                        <a href="utils/eliminarusuario.php?id=<?php echo $usuario['idUsuario']; ?>"
                            class="btn btn-danger" onclick="return confirmarEliminar()">Eliminar</a>

                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>


        <button class="btn btn-primary" onclick="location.href='usuarios/crear.php'">Crear Usuario</button>


        <script>
        function confirmarEliminar(usuarioId) {
            if (confirm('¿Estás seguro de eliminar este usuario?')) {
                window.location.href = 'eliminar_usuario.php?id=' + usuarioId;
            }
        }
        </script>

        <?php endif; ?>

    </div>

</body>

</html>