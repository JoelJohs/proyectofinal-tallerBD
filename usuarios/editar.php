<?php
session_start();

require "../config/conexion.php";

if (!isset($_SESSION['usNombre']) || $_SESSION['rol'] !== 'admin') {
    header("Location: index.php");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['id'])) {
    $usuario_id = $_GET['id'];

    $query = "SELECT * FROM usuarios WHERE idUsuario = $usuario_id";
    $result = mysqli_query($con, $query);

    if ($result) {
        $usuario = mysqli_fetch_assoc($result);
    } else {
        $error_message = "Error al obtener los datos del usuario.";
    }
} else {

    header("Location: ../usuarios.php");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $nombreUsuario = $_POST['nombreUsuario'];
    $email = $_POST['email'];
    $password = sha1($_POST['password']);

    $query = "UPDATE usuarios SET nombre = '$nombre', apellidos = '$apellido', usNombre = '$nombreUsuario', email = '$email', password = '$password' WHERE idUsuario = $usuario_id";
    $result = mysqli_query($con, $query);

    if ($result) {
        header("Location: ../usuarios.php?success_message=Usuario editado correctamente");
        exit;
    } else {
        $error_message = "Error al editar el usuario: " . mysqli_error($con);
    }
}
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Usuario</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/usuariosfolder.css">

</head>

<body>
    <?php require "../components/nav.php" ?>

    <div class="container">
        <h1>Editar Usuario</h1>

        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" class="form-control"
                    value="<?php echo $usuario['nombre']; ?>" required>
            </div>
            <div class="form-group">
                <label for="apellido">Apellido:</label>
                <input type="text" id="apellido" name="apellido" class="form-control"
                    value="<?php echo $usuario['apellidos']; ?>" required>
            </div>
            <div class="form-group">
                <label for="nombreUsuario">Nombre de Usuario:</label>
                <input type="text" id="nombreUsuario" name="nombreUsuario" class="form-control"
                    value="<?php echo $usuario['usNombre']; ?>" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control"
                    value="<?php echo $usuario['email']; ?>" required>
            </div>
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary">Editar Usuario</button>
        </form>

        <?php if (isset($error_message)) : ?>
        <div class="alert alert-danger" role="alert">
            <?php echo $error_message; ?>
        </div>
        <?php endif; ?>

    </div>

</body>

</html>