<?php 
       
        $servername = "localhost";
        $username = "root";   
        $password = "";	
        $db = "delegados";

        $connection = new mysqli($servername, $username, $password, $db);
        mysqli_set_charset($connection, "utf8");

        // Check connection
        if (!$connection) {
            die("Connection failed: " . mysqli_connect_error());
        }

        $_POST['name'] = utf8_encode($_POST['name']);
        $query = "select distrito_municipal from usuario where provincia like '{$_POST['name']}' group by distrito_municipal";
        $result = $connection->query($query);
        while ($res = mysqli_fetch_array($result)){
            $row[] = $res;
        }

        //print_r($row);
        echo json_encode($row);        
?>