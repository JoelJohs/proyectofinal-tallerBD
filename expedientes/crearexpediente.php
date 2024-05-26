<?php
session_start();
require "../config/conexion.php";

if (!isset($_SESSION['usNombre'])) {
    header("Location: ../index.php");
    exit;
}

// Asegurarse de que la sesión tiene idUsuario
if (!isset($_SESSION['idUsuario'])) {
    // Si idUsuario no está definido, redirigir o manejar el error apropiadamente
    header("Location: ../index.php");
    exit;
}

$idUsuario = $_SESSION['idUsuario'];

// Obtener opciones para ubicación y licenciatura
$query_ubicaciones = "SELECT idUbicacion, Descripcion FROM ubicfisica";
$result_ubicaciones = mysqli_query($con, $query_ubicaciones);

$query_licenciaturas = "SELECT idLic, LicNombre FROM licenciatura";
$result_licenciaturas = mysqli_query($con, $query_licenciaturas);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $ubicacion = $_POST['ubicacion'];
    $expediente = $_POST['expediente'];
    $apellido1 = $_POST['apellido1'];
    $apellido2 = $_POST['apellido2'];
    $nombre = $_POST['nombre'];
    $fechaNac = $_POST['fechaNac'];
    $sexo = $_POST['sexo'];
    $ingreso = $_POST['ingreso'];
    $egreso = $_POST['egreso'];
    $grupo = $_POST['grupo'];
    $ultimoSemestre = $_POST['ultimoSemestre'];
    $titulado = isset($_POST['titulado']) ? 1 : 0;
    $licenciatura = $_POST['licenciatura'];
    $fechaCaptura = date("Y-m-d H:i:s");
    $usCaptura = $idUsuario;

    $query = "INSERT INTO expedientes (ubicacion, Expediente, Apellido1, Apellido2, Nombre, FechaNac, Sexo, Ingreso, Egreso, Grupo, UltimoSemestre, Titulado, Licenciatura, FechaCaptura, UsCaptura)
              VALUES ('$ubicacion', '$expediente', '$apellido1', '$apellido2', '$nombre', '$fechaNac', '$sexo', '$ingreso', '$egreso', '$grupo', '$ultimoSemestre', '$titulado', '$licenciatura', '$fechaCaptura', '$usCaptura')";

    $result = mysqli_query($con, $query);

    if ($result) {
        header("Location: ../dashboard.php?success_message=Expediente creado correctamente");
        exit;
    } else {
        $error_message = "Error al crear el expediente: " . mysqli_error($con);
    }
}
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Expediente</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/crearexpediente.css">
</head>

<body>
    <?php require "../components/nav.php" ?>
    <div class="container">
        <h1>Crear Expediente</h1>
        <?php if (isset($error_message)) : ?>
            <div class="alert alert-danger"><?php echo $error_message; ?></div>
        <?php endif; ?>
        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <div class="form-group">
                <label for="ubicacion">Ubicación:</label>
                <select id="ubicacion" name="ubicacion" class="form-control" required>
                    <option value="">Seleccione una ubicación</option>
                    <?php while ($row = mysqli_fetch_assoc($result_ubicaciones)) : ?>
                        <option value="<?php echo $row['idUbicacion']; ?>"><?php echo $row['Descripcion']; ?></option>
                    <?php endwhile; ?>
                </select>
            </div>
            <div class="form-group">
                <label for="expediente">Expediente:</label>
                <input type="text" id="expediente" name="expediente" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="apellido1">Primer Apellido:</label>
                <input type="text" id="apellido1" name="apellido1" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="apellido2">Segundo Apellido:</label>
                <input type="text" id="apellido2" name="apellido2" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="fechaNac">Fecha de Nacimiento:</label>
                <input type="date" id="fechaNac" name="fechaNac" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="sexo">Sexo:</label>
                <select id="sexo" name="sexo" class="form-control" required>
                    <option value="">Seleccione el sexo</option>
                    <option value="M">Masculino</option>
                    <option value="F">Femenino</option>
                </select>
            </div>
            <div class="form-group">
                <label for="ingreso">Año de Ingreso:</label>
                <input type="number" id="ingreso" name="ingreso" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="egreso">Año de Egreso:</label>
                <input type="number" id="egreso" name="egreso" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="grupo">Grupo:</label>
                <input type="text" id="grupo" name="grupo" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="ultimoSemestre">Último Semestre:</label>
                <input type="text" id="ultimoSemestre" name="ultimoSemestre" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="titulado">Titulado:</label>
                <input type="checkbox" id="titulado" name="titulado" value="1">
            </div>
            <div class="form-group">
                <label for="licenciatura">Licenciatura:</label>
                <select id="licenciatura" name="licenciatura" class="form-control" required>
                    <option value="">Seleccione una licenciatura</option>
                    <?php while ($row = mysqli_fetch_assoc($result_licenciaturas)) : ?>
                        <option value="<?php echo $row['idLic']; ?>"><?php echo $row['LicNombre']; ?></option>
                    <?php endwhile; ?>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Crear Expediente</button>
        </form>
    </div>
</body>

</html>