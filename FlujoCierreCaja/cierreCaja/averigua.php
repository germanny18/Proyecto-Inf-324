	<link rel="stylesheet" type="text/css" href="css/estilofinal.css">
	<section id="main-content">
		<article>
			<div class="content">
				<h2><center>Pantalla 1 Lista de Cajas</center></h2>
				<br>
				<table border="1" cellspacing=1 cellpadding=2 style="font-size: 8pt">
				<tr>
				<td>Cod</td>
				<td>Caja</td>
				<td>Fecha</td>
				<td>hora</td>
    			<!--<td align="center"><font face="crono" size="4"><b>FECHA FIN</b></font></td>
    			<td align="center"><font face="crono" size="4"><b>HORA FIN</b></font></td>-->
    			</tr>   
				<?php
				include "conexion.php";
				$sql="SELECT cod,descripcion,concat_ws(' ',fecha_inicio,' ') as Fechas, concat_ws(' ',hora_inicio,'   A   ', hora_fin) as Hora_Atencion FROM caja order by fecha_inicio";
				$result=mysqli_query($con, $sql);
				//echo $result."--------";
    			while($row = mysqli_fetch_array($result))
    			{
    			 echo "<tr><td width=\"40%\"><font face=\"crono\" size=\"4\">".$row["cod"]."</font></td>";
    			 echo "<td width=\"30%\" align=\"center\"><font face=\"crono\" size=\"3\">".$row["descripcion"]."</font></td>";
				 echo "<td width=\"30%\" align=\"center\"><font face=\"crono\" size=\"3\">".$row["Fechas"]."</font></td>";
    			 //echo "<td width=\"17.5%\" align=\"center\"><font face=\"crono\" size=\"4\">".$row["fecha_fin"]."</font></td>";
    			 echo "<td width=\"30%\" align=\"center\"><font face=\"crono\" size=\"3\">".$row["Hora_Atencion"]."</font></td>";
    			 //echo "<td width=\"17.5%\" align=\"center\"><font face=\"crono\" size=\"4\">".$row["hora_fin"]."</font></td></tr>";
    			}
				?>
				</table>
			</div>
		</article> 
	</section> 
</body>
</html>




