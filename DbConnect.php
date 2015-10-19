<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//database connection variables
$host = "localhost";
$db_name = "shopping";
$username = "root";
$password = "";
        
try {
    $con =  new PDO("mysql:host={$host};dbname={$db_name}", $username, $password);
} catch (PDOException $ex) {
    echo "Connection error:  ". $exception->getMessage(); 

}
?>