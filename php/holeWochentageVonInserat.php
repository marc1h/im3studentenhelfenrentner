<?php

require("config.php");
require("autorisieren.php");

$inseratID = $_POST["inseratID"];

$sql = "
SELECT w.ID, w.wochentag FROM Wochentag w 
INNER JOIN Inserat_Hat_Wochentag junc ON w.ID = junc.wochentag_id
WHERE junc.inserat_id = '$inseratID';
";

$stmt = $pdo->prepare($sql);

$erfolg = $stmt->execute();

if ($erfolg) {

    $array = $stmt->fetchAll();

    $jsonArray = json_encode($array);

    print_r($jsonArray);
}