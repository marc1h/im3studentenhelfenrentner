<?php

require('config.php');
require('upload.php');

$funktion = $_POST["funktion"];
$vorname = $_POST["vorname"];
$nachname = $_POST["nachname"];
$strasse = $_POST["strasse"];
$plz = $_POST["plz"];
$ort = $_POST["ort"];
$geburtsdatum = $_POST["geburtsdatum"];
$email = $_POST["email"];
$password = $_POST["password"];
$bankverbindung = $_POST["bankverbindung"];

$password = password_hash($password, PASSWORD_DEFAULT); /* Passtwort verschlüsseln */

$sql = "INSERT INTO User (funktion, vorname, nachname, strasse, plz, ort, geburtsdatum, email, password, bankverbindung) VALUES (:Funktion, :Vorname, :Nachname, :Strasse, :Plz, :Ort, :Geburtsdatum, :Email, :Password, :Bankverbindung)";


$stmt = $pdo->prepare($sql);

$erfolg = $stmt->execute(array('Funktion' => $funktion, 'Vorname' => $vorname, 'Nachname' => $nachname, 'Strasse' => $strasse, 'Plz' => $plz, 'Ort' => $ort, 'Geburtsdatum' => $geburtsdatum,'Email' => $email, 'Password' => $password, 'Bankverbindung' => $bankverbindung));
               

    
if ($erfolg) {          

    print_r('Registrierung erfolgreich.');
    gotologin();

} else {

    print_r('Ihre Registrierung konnte nicht durchgeführt werden. Bitte kontrollieren Sie nochmals Ihre Angaben.');   
};








?> 