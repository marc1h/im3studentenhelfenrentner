<?php

require_once('config.php');
require_once('autorisieren.php');


$funktion = $_POST["funktion"];
$vorname = $_POST["vorname"];
$nachname = $_POST["nachname"];
$strasse = $_POST["strasse"];
$plz = $_POST["plz"];
$ort = $_POST["ort"];
$geburtsdatum = $_POST["geburtsdatum"];
$bankverbindung = $_POST["bankverbindung"];


$sql = "UPDATE User SET funktion=?, vorname=?, nachname=?, strasse=?, plz=?, ort=?, geburtsdatum=?, bankverbindung=? WHERE id=?";   
$stmt = $pdo->prepare($sql);

$erfolg = $stmt->execute([$funktion, $vorname, $nachname, $strasse, $plz, $ort, $geburtsdatum, $bankverbindung, $userID]);


if ($erfolg) {

    print_r("Ihre persönlichen Daten wurde aktualisiert.");

} else {

    print_r($erfolg);
};