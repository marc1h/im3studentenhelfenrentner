<?php

require_once('config.php');
require_once('autorisieren.php');

$aktion = $_POST["aktion"];
$userID = $_POST["userID"];
$thema = $_POST["thema"];
$kurzbeschrieb = $_POST["kurzbeschrieb"];
$zeit = $_POST["zeit"];
$preis = $_POST["preis"];
$kanton = $_POST["kanton"];


$inseratID = $_POST["inseratID"];

$wochentage = json_decode($_POST['wochentage']);

$sql = "UPDATE Inserat SET aktion=?, thema=?, kurzbeschrieb=?, kanton=?, zeit=?, preis=?  WHERE user=?";
$stmt = $pdo->prepare($sql);

$erfolg = $stmt->execute([$aktion, $thema, $kurzbeschrieb, $kanton, $zeit, $preis, $userID]);

if ($erfolg) {

    loescheAlteWochentage($inseratID);
    insertNeueWochentage($wochentage, $inseratID);

} else {

    print_r($erfolg);

};


function loescheAlteWochentage($inseratID){

    require('config.php');

    $sql = "DELETE FROM Inserat_Hat_Wochentag WHERE inserat_id = ?";
    $stmt = $pdo->prepare($sql);

    $stmt->execute([$inseratID]);

}

function insertNeueWochentage($wochentage, $inseratID){

    require('config.php');

    // füge die neuen Wochentage ein, wenn überhaupt Wochentage angeklickt wurden
    if (sizeof($wochentage) > 0) {

        $sql = "INSERT INTO Inserat_Hat_Wochentag (inserat_id, wochentag_id) VALUES (:inserat_id, :wochentag_id)";
        $stmt = $pdo->prepare($sql);

        foreach ($wochentage as $wochentag) {

            $erfolg = $stmt->execute(array('inserat_id' => $inseratID, 'wochentag_id' => $wochentag));
        }

        if ($erfolg) {

            print_r("Ihr Inserat wurde aktualisiert.");

        } else {

            print_r($erfolg);
        }
        
    } else {

        print_r("Ihr Inserat wurde ohne Wochentage aktualisiert.");
    }

}