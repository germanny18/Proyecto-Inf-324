<?php
	session_start();
	require_once('../conexion.php');
	$usuario=$_SESSION['username'];
	if (!isset($usuario)) {
		header("Location: login.php");
	}
	else{
?>
<!DOCTYPE html>
<html>
<head>
<title>Pagina inf 324</title>

<!--<link rel="stylesheet" href="style1.css">-->
<link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
	<!--<div id="menu-fondo" >-->
		<form action="salir.php" method="post">
			<div class="imgcontainer" >
 				<header>
 				<?php	
				$user=$_SESSION['username'];
				?>
				<img src="avatar.png" width="80" height="80" />
				<?php 
				$sql = "select apellidos, nombre from estudiante where ci_estudiante like '$user'";
				$query = mysqli_query($con,$sql);
				while ($mostrar=mysqli_fetch_array($query)) {
				?>
				<td><?php echo $mostrar['apellidos']?></td>
                <td><?php echo $mostrar['nombre']?></td>
				<?php
				}
				?>	
				<nav>
					<button class="logout_bntSesion" type="submit" name="cerrar">Cerrar Sesion</button>
				</nav>
    			</header>
			</div>
            </form>
                
                
            <div class="consul">
                <h3><center>Estados de Caja</center></h3>
                <table border="1" align="center">
                    <tr>
                        <td align="center"><font size="4">CI</font></td>
                        <td align="center"><font size="4">Peso</font></td>
                        <td align="center"><font size="4">Talla</font></td>
                        <td align="center"><font size="4">Estado</font></td>
                    </tr>
                <?php
                $user=$_SESSION['username'];
                //echo $user."---------------";
                $sql="select ci_estudiante, peso, talla, estado from valoracion where ci_estudiante like '$user'";
                $query = mysqli_query($con,$sql);
                //echo $query;
                while ($mostrar=mysqli_fetch_array($query)) {
                ?>
                <tr>
                <td width="25%" align="center"><?php echo $mostrar['ci_estudiante']?></td>
                <td width="25%" align="center"><?php echo $mostrar['peso']?></td>
                <td width="25%" align="center"><?php echo $mostrar['talla']?></td>
                <td width="25%" align="center"><?php echo $mostrar['estado']?></td>
                </tr>
                <?php
                }
                ?>
                </table>
                <br>
            </div>
        
        <br>
        
  <!--      </div>-->
</body>
</html>
<?php 
} 
?>