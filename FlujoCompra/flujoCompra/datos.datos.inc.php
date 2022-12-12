<?php
$sql = "SELECT * FROM academico.alumno ";
$sql .= "WHERE id=100";
$resultadofi = mysqli_query($con, $sql);
$filafi = mysqli_fetch_array($resultadofi);
$id = $filafi["id"];
$nombrecompleto = $filafi["nombrecompleto"];
$promedio = $filafi["promedio"];
?>

<table>
  <tr>
    <td>Articulo</td>
    <td>Precio</td>
    <td>Cantidad</td>
    <td>subTotal</td>
    <td>fecha final</td>
    <td>go</td>
  </tr>
  <?php
  while ($filafi = mysqli_fetch_array($resultadofi)) {
    echo "<tr>";
    echo "<td>" . $filafi["id"] . "</td>";
    echo "<td>" . $filafi["nombrecompleto"] . "</td>";
    echo "<td>" . $filafi["coddepto"] . "</td>";
    echo "<td>" . $filafi["promedio"] . "</td>";
    echo "<td>" . $filafi["cnacimiento"] . "</td>";
    //echo "<td><a href='flujo.php?flujo=" . $fila["Flujo"] . "&proceso=" . $fila["proceso"] . "'>Ir</td>";
    echo "</tr>";
  }
  ?>
</table>
