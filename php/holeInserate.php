<?php

require("config.php");
require("autorisieren.php");

$sql = "

SELECT INSERAT.ID, INSERAT.aktion, INSERAT.thema, INSERAT.kurzbeschrieb, KT.kanton, INSERAT.zeit, INSERAT.preis, U.vorname, U.nachname, U.email, INSERAT.timestamp
FROM Inserat INSERAT
INNER JOIN User U
ON INSERAT.user = U.ID
INNER JOIN Kanton KT
ON INSERAT.kanton = KT.ID
ORDER BY INSERAT.timestamp DESC;

";

$stmt = $pdo->prepare($sql);

$erfolg = $stmt->execute();

if ($erfolg) {

    $array = $stmt->fetchAll();

    $jsonArray = json_encode($array);

    print_r($jsonArray);
}