<?php


require("config.php");
require("autorisieren.php");

$userID = $_POST["userID"];

$sql = "SELECT vorname FROM User WHERE id = $userID";

$stmt = $pdo->prepare($sql);

$erfolg = $stmt->execute();

if ($erfolg) {

    $array = $stmt->fetchAll();

    $jsonArray = json_encode($array);

    print_r($jsonArray);
}