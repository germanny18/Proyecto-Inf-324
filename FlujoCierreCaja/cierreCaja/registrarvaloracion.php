<html>
<head>
	<title>Cierre de Caja</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/estilofinal.css">
</head>
<body>
       <?php 
    include("conexion.php");
if (isset($_POST['register'])) {
    if (strlen($_POST['ci']) >= 1 && strlen($_POST['cod']) >= 1 && strlen($_POST['saldo']) >= 1) {
	                 $ci=trim($_POST['ci']);
	                 $cod=trim($_POST['cod']);
	                 $saldo=trim($_POST['saldo']);
					 $fecha=trim($_POST['fecha']);
					 $obs=trim($_POST['obs']);
	                 $consulta = "INSERT INTO cajacierre(ci,cod,saldo,fecha,obs)
					  VALUES('$ci','$cod','$saldo','$fecha','$obs')";
	                 $resultado = mysqli_query($con,$consulta);
					 
	    if ($resultado) {
	    	?> 
	    	<h3 class="ok">¡Registrado correctamente!</h3>
           <?php
	    } else {
	    	?> 
	    	<h3 class="bad">¡Ups ha ocurrido un error!</h3>
           <?php
	    }
    }   else {
	    	?> 
	    	<h3 class="bad">¡Por favor complete los campos!</h3>
           <?php
    }
}

?>
</body>
</html>