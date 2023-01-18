<?php

require("config.php");
require("autorisieren.php");


$userID = $_POST["userID"];


$sql = "SELECT vorname FROM User WHERE id = $userID";


$stmt = $pdo->prepare($sql);

$erfolg = $stmt->execute();

if ($erfolg){
    
    print_r("Ihr Konto wurde gelöscht!") ;

} else {

    print_r($erfolg);

}


