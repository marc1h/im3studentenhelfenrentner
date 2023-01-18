<?php

require('config.php'); 
require('autorisieren.php');

$user = $_POST["user"];

$aktion = $_POST["aktion"];
$thema = $_POST["thema"];
$kurzbeschrieb = $_POST["kurzbeschrieb"];
$kanton = $_POST["kanton"];
$zeit = $_POST["zeit"];
$preis = $_POST["preis"];


$wochentage = json_decode($_POST['wochentage']);

$sql = "INSERT INTO Inserat (aktion, thema, kurzbeschrieb, zeit, preis, kanton, user) VALUES (:Aktion, :Thema, :Kurzbeschrieb, :Zeit, :Preis, :Kanton, :User)";


$stmt = $pdo->prepare($sql);

$erfolg = $stmt->execute(array('Aktion' => $aktion, 'Thema' => $thema, 'Kurzbeschrieb' => $kurzbeschrieb, 'Kanton' => $kanton, 'Zeit' => $zeit, 'Preis' => $preis, 'User' => $user));




if ($erfolg) {

    $letzteID = $pdo->lastInsertId();

    insertWochentage($wochentage, $letzteID);

} else {

    print_r($erfolg);
};



function insertWochentage($wochentage, $letzteID) {

    require('config.php');

    if (sizeof($wochentage) > 0) {

        $sql = "INSERT INTO Inserat_Hat_Wochentag (inserat_id, wochentag_id) VALUES (:inserat_id, :wochentag_id)";

        $stmt = $pdo->prepare($sql);

        foreach ($wochentage as $wochentag) {

            $erfolg = $stmt->execute(array('inserat_id' => $letzteID, 'wochentag_id' => $wochentag));
        }

        if ($erfolg) {

            print_r("Ihr Inserat wurde aufgeschaltet.");

        } else {
            
            print_r($erfolg);
        }
    } else {

        print_r("Ihr Inserat wurde ohne gewünschte Wochentage aufgeschaltet.");
    }
}