

<link rel="stylesheet" type="text/css" href="css/estilofinal.css">

<!--<link rel="stylesheet" type="text/css" href="css/estilo1.css">-->
<?php 
if ($codProceso=='P8') { 
  ?>
 <!-- <link rel="stylesheet" type="text/css" href="css/estilo.css">-->
  <form action="" method="POST">
  <h1><center>HISTORIAL</center></h1>
    
        <input type="text" name="ci" placeholder="Introduzca Carnet de Identidad" required><br>
        <input type="submit" name="ver" required>
   
  </form>
  <?php 
}
?>

<?php 
if ($codProceso=='P3') {
  ?>
  <form action="" method="POST">
  <h2><center>SELECCIONA CAJA</center></h2>
 
          <select name="caja" required>
            <option value="">cajas</option>
            <option value="C1">caja1</option>
            <option value="C2">caja2</option>
            <option value="C3">caja3</option>
            <option value="C4">caja4</option>
            <option value="C5">caja5</option>
          </select>           
       <br>
          <br>
          
          <input type="number" name="ingreso" id="ingreso">
          <input type="number" name="egreso" id="egreso">
       <br>
      
        <input type="submit" name="Verifica" required>
    

      
    </form>

    <?php 
  }
  
  if ($codProceso=='P4'):
    ?>
    <form  action="" method="POST">
	<h2><center>Cerrar caja</center></h2>
          <select name="caja" required>
            <option value="">cajas</option>
            <option value="C1">caja1</option>
            <option value="C2">caja2</option>
            <option value="C3">caja3</option>
            <option value="C4">caja4</option>
            <option value="C5">caja5</option>
          </select> 
        <input type="text" name="ci" placeholder="Introduzca Carnet de Identidad" required>        
        
        <input type="submit" name="envia" required>			  
    </form>

  <?php endif ?>
  
  
  
  <?php 
  if ($codProceso=='P6') { 
    ?>

    <form method="post">
    	<h1>Datos de Cierre</h1>
    	<input type="text" name="nombre" placeholder="Nombre">
    	<input type="text" name="apellidos" placeholder="Apellidos">
      <input type="text" name="ci" placeholder="Carnet de Identidad">
      <input type="text" name="facultad"  value="<?php echo date("Y-m-d");?>">
      <input type="text" name="carrera" placeholder="Carrera">
      <input type="submit" name="register" required>
    </form>
    <?php 
  }
  ?>
  
  <?php 
  if ($codProceso=='P7') { 
    ?>
    <form method="post">
    	<h1>Registrar Cierre</h1>
        <input type="text" name="ci" id="ci" placeholder="ci cajero">
        <input type="text" name="cod" placeholder="Codigo caja"><br>
        <input type="text" name="saldo" placeholder="Saldo"><br>
        <input type="text" name="fecha"  value="<?php echo date("Y-m-d");?>"><br>
		<select name="obs">
            <option value="Saldo Igual">Saldo Igual</option>
            <option value="Saldo Mayor">Saldo Mayor</option>
            <option value="Saldo Menor">Saldo Menor</option>
          </select>           <br>
        <!--<input type="text" name="estado" placeholder="Estado">-->
        <input type="submit" name="register"> 
    
   </form>
   <?php 
 }
 ?>
 