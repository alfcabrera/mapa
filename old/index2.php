<!DOCTYPE html>
<html>
<head>
	<?php 
		include('db.php');
	?>
	<meta charset="utf-8">
	<title>Mapa Interactivo</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/estilos.css">
</head>
<body>
	<?php 
		$distrito = "distrito nacional";		
		$query = "select * from usuario where provincia like '$distrito%' and circunscripcion = '00'";
		$result = $connection->query($query);

	?>	
	<div class="container">
		<div class="row">

			<div class="col-xs-12 clearfix">
				<h1>Delegados Distrito Nacional</h1>
				
				

				<div class="nombres-wrap">
				<?php 

					if ($result->num_rows > 0) {
						// output data of each row
					    while( $row = $result->fetch_assoc()) {
					    	echo "							    						   
					    		<div class='nombres-block col-xs-12'>				    		
									<p class='del-name'>{$row['nombre']}</p>
									<p>{$row['cargo']}</p>
									<p>{$row['provincia']}, {$row['municipio']}</p>								
									<p><a href='mailto: {$row['correo_electronico']}'>{$row['correo_electronico']}</a></p>
									<p><a href='tel:{$row['telefono']}'>{$row['telefono']}</a></p>
									<p><a href='tel:{$row['celular']}'>{$row['celular']}</a></p>
									<p>BBPIN: {$row['bbpin']}</p>
								</div>
					    	";   
				    	} 
					}

				?>
				</div>

			</div>

		</div>
	</div>


</body>
</html>