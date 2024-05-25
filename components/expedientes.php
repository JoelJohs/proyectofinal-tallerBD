<?php
require "config/conexion.php";

// Definir la columna por defecto para ordenar
$sort_column = isset($_GET['sort']) ? $_GET['sort'] : 'Apellido1';
$sort_order = isset($_GET['order']) ? $_GET['order'] : 'ASC';

// Consulta SQL con el orden especificado
$query = "SELECT expedientes.id, expedientes.Apellido1, expedientes.Apellido2, expedientes.Nombre, licenciatura.LicCorto 
          FROM expedientes
          INNER JOIN licenciatura ON expedientes.Licenciatura = licenciatura.idLic
          ORDER BY $sort_column $sort_order";
$result = mysqli_query($con, $query);
?>


<table class="table table-hover table-bordered">
    <thead class="thead-dark">
        <tr>
            <th><a href="?sort=Apellido1&order=<?php echo ($sort_column == 'Apellido1' && $sort_order == 'ASC') ? 'DESC' : 'ASC'; ?>">Apellido
                    Paterno</a>
            </th>
            <th><a href="?sort=Apellido2&order=<?php echo ($sort_column == 'Apellido2' && $sort_order == 'ASC') ? 'DESC' : 'ASC'; ?>">Apellido
                    Materno</a>
            </th>
            <th><a href="?sort=Nombre&order=<?php echo ($sort_column == 'Nombre' && $sort_order == 'ASC') ? 'DESC' : 'ASC'; ?>">Nombre</a>
            </th>
            <th><a href="?sort=LicCorto&order=<?php echo ($sort_column == 'LicCorto' && $sort_order == 'ASC') ? 'DESC' : 'ASC'; ?>">Licenciatura</a>
            </th>
        </tr>
    </thead>
    <tbody>
        <?php while ($row = mysqli_fetch_assoc($result)) : ?>
            <tr onclick="window.location='detalles.php?id=<?php echo $row['id']; ?>'">
                <td><?php echo $row['Apellido1']; ?></td>
                <td><?php echo $row['Apellido2']; ?></td>
                <td><?php echo $row['Nombre']; ?></td>
                <td><?php echo $row['LicCorto']; ?></td>
            </tr>
        <?php endwhile; ?>
    </tbody>
</table>

<?php
mysqli_free_result($result);
mysqli_close($con);
?>