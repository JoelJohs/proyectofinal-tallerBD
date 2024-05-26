<?php define('BASE_URL', 'http://localhost/expedientes/');
?>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="<?php echo BASE_URL; ?>dashboard.php">Dashboard</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="<?php echo BASE_URL; ?>expedientes/crearexpediente.php">Crear expedientes</a>

            </li>
            <?php if ($_SESSION['rol'] == 'admin') : ?>
                <!-- Mostrar elementos solo para el rol de admin -->
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo BASE_URL; ?>usuarios.php">Usuarios</a>
                </li>
            <?php endif; ?>
        </ul>
        <!-- Mostrar nombre y rol del usuario -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <span class="navbar-text text-white mr-3">
                    <?php echo $_SESSION['usNombre'] . ' - ' . ucfirst($_SESSION['rol']); ?>
                </span>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo BASE_URL; ?>config\logout.php">Cerrar
                    sesión</a>
            </li>
        </ul>
    </div>
</nav>