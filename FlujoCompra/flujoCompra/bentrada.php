<?php
include "conexion.inc.php";
if(!isset($_SESSION)){
  session_start();
}

$usuario = $_SESSION["usuario"];
$sqlId = "SELECT * FROM compra.usuario WHERE nombre = 'Carlos'";
$resId = mysqli_query($con, $sqlId);
//$id;
while ($filaId = mysqli_fetch_array($resId)) {
//$filaId = mysqli_fetch_array($resId);
echo $filaId["nombre"];
$id = $filaId["id"];
}

if($usuario == 'moises'){
  $sql = "select * from compra.articulo";
}else{
  $sql = "select * from compra.articulo where idUsuario = $id";
}

//$sql .= "where usuario='" . $usuario . "' and proceso='$proceso'";
//echo $sql;
//$sql .= "where usuario='" . $usuario . "' and fechafin is null";
$resultado = mysqli_query($con, $sql);

?>
<table>
  <tr>
    <td>Id</td>
    <td>Articulo</td>
    <td>Precio</td>
    <td>Cantidad</td>
    <td>SubTotal</td>
    <td>IdUsuario</td>
  </tr>
  <?php
  while ($fila = mysqli_fetch_array($resultado)) {
    echo "<tr>";
    echo "<td>" . $fila["id"] . "</td>";
    echo "<td>" . $fila["articulo"] . "</td>";
    echo "<td>" . $fila["precio"] . "</td>";
    echo "<td>" . $fila["cantidad"] . "</td>";
    echo "<td>" . $fila["subtotal"] . "</td>";
    echo "<td>" . $fila["idUsuario"] . "</td>";
   echo "<td><a href='flujo.php?flujo=" .'F1' . "&proceso=" . 'P2' . "'>Ir</td>";
    echo "</tr>";
  }
  ?>
</table>