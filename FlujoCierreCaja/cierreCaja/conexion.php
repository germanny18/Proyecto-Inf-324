<?php
$con=mysqli_connect("localhost","root","");
mysqli_select_db($con,"academico_3");
if(!$con){
	die("No hay conexion:".mysql_connect_error());
}
$conn=mysqli_connect("localhost","root","");
mysqli_select_db($conn,"flujo2");
if(!$conn){
	die("No hay conexion:".mysql_connect_error());
}

?>