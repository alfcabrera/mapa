<?php 
        $jsonurl= "delegados-azua.json"; 
        $json = file_get_contents($jsonurl);  
        $json_output = json_decode($json, JSON_PRETTY_PRINT); 
        $error = json_last_error();

        

        echo "INSERT INTO usuario (provincia, municipio, distrito_municipal, nombre, cedula, cargo) VALUES ";

        for ($i = 0 ; $i < count($json_output) ; $i++) {
       
        echo  "('".$json_output[$i]["PROVINCIA"]."','".$json_output[$i]["MUNICIPIO"]."', '".$json_output[$i]["DISTRITO MUNICIPAL"]."', '".$json_output[$i]["NOMBRE"]."', '".$json_output[$i]["CEDULA"]."', '".$json_output[$i]["CARGO QUE ASPIRA"]."'),";
       
        echo "<br>"; 
        }


?>