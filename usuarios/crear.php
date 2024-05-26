<?php
session_start();

require "../config/conexion.php";

if (!isset($_SESSION['usNombre']) || $_SESSION['rol'] !== 'admin') {
    header("Location: index.php");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    if (empty($_POST['nombre']) || empty($_POST['apellido']) || empty($_POST['nombreUsuario']) || empty($_POST['email']) || empty($_POST['rol']) || empty($_POST['password'])) {
        $error_message = "Por favor, llene todos los campos.";
    } else {
        $nombre = $_POST['nombre'];
        $apellido = $_POST['apellido'];
        $nombreUsuario = $_POST['nombreUsuario'];
        $email = $_POST['email'];
        $rol = $_POST['rol'];
        $password = sha1($_POST['password']);

        // Iniciar la transacción
        mysqli_begin_transaction($con);

        // Intentar insertar el nuevo usuario
        $query = "INSERT INTO usuarios (usNombre, password, nombre, apellidos, email, rol, fechaAlta) VALUES ('$nombreUsuario', '$password', '$nombre', '$apellido', '$email', '$rol', NOW())";
        $result = mysqli_query($con, $query);

        // Verificar si la inserción fue exitosa
        if ($result) {
            // Commit la transacción si todo salió bien
            mysqli_commit($con);
            header("Location: ../usuarios.php?success_message=Nuevo usuario creado correctamente");
            exit;
        } else {
            // Rollback la transacción si hubo algún error
            mysqli_rollback($con);
            $error_message = "Error al crear el nuevo usuario: " . mysqli_error($con);
        }
    }
}


$query_roles = "SELECT idRol, descripcion FROM roles";
$result_roles = mysqli_query($con, $query_roles);

if ($result_roles) {
    $roles = mysqli_fetch_all($result_roles, MYSQLI_ASSOC);
} else {
    $error_message = "Error al obtener la lista de roles.";
}

mysqli_close($con);
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
        <h1>Crear Nuevo Usuario</h1>

        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="apellido">Apellido:</label>
                <input type="text" id="apellido" name="apellido" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="nombreUsuario">Nombre de Usuario:</label>
                <input type="text" id="nombreUsuario" name="nombreUsuario" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="rol">Rol:</label>
                <select id="rol" name="rol" class="form-control" required>
                    <option value="">Selecciona un rol</option>
                    <?php foreach ($roles as $rol) : ?>
                        <option value="<?php echo $rol['idRol']; ?>"><?php echo $rol['descripcion']; ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Crear Usuario</button>
        </form>

        <?php if (isset($error_message)) : ?>
            <div class="alert alert-danger" role="alert">
                <?php echo $error_message; ?>
            </div>
        <?php endif; ?>

    </div>

</body>

</html>