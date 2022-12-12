<?php 
include 'conexion.php';
if (isset($_POST["Verifica"])):
	$caja=$_POST["caja"];
	$ingreso=$_POST["ingreso"];
	$egreso=$_POST["egreso"];
	//$mensaje='';
	//$sql="SELECT * FROM cronograma WHERE facultad like '$facu' and('$fecha' >=fecha_inicio AND '$fecha' <= fecha_fin)";
	$sql="SELECT * FROM caja WHERE cod like '$caja' and ingreso='$ingreso' and egreso='$egreso'";
	$result=mysqli_query($con,$sql);
	echo '<table class="datos">';
	?>
	<tr>
		<td>Codigo</td>
		<td>Caja</td>
		<td>Ingreso</td>
		<td>Egreso</td>
		<td>Saldo</td>
	</tr>
	<?php
	while($fila=mysqli_fetch_row($result))
			{
				$mensaje='LOS INGRESOS Y EGRESOS CORRESPONDEN A LA FECHA';
				echo "<tr>";
				echo "<td>".$fila[0]."</td>";
				echo "<td>".$fila[1]."</td>";
				echo "<td>".$fila[6]."</td>";
				echo "<td>".$fila[7]."</td>";
				$saldo=$fila[6]-$fila[7];
				echo "<td>".$saldo."</td>";
				echo "</tr>";
				echo'<tr><td colspan="5">'.$mensaje.'</td></tr>';
			
				$mensaje='SI';
				
			}
			if(empty($mensaje)){
				echo'<tr><td>LOS INGRESOS Y EGRESOS NO CORRESPONDEN</td></tr>';
				$mensaje='NO';
				
			}
	echo '</table>';

endif ?>
<br>
<input type="text" name="cond" placeholder="Verificación Automática" value='<?php if(!empty($mensaje))echo $mensaje; ?>'>
<br><br>


