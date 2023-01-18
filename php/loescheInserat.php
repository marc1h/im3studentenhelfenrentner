<?php    

    require_once('config.php');
    require_once('autorisieren.php');

    $userID = $_POST["userID"];
    $inseratID = $_POST["inseratID"];

    $sql = "DELETE FROM Inserat WHERE user = ? AND id = ?";
    $stmt = $pdo->prepare($sql);

    $erfolg = $stmt->execute([$userID, $inseratID]);


    if ($erfolg) {

        loescheWochentage($inseratID);
    
    } else {
    
        print_r($erfolg);
    };
    

    
    function loescheWochentage($inseratID){
    
        require('config.php');
 
        $sql = "DELETE FROM Inserat_Hat_Wochentag WHERE inserat_id = ?";
        $stmt = $pdo->prepare($sql);
    
        $erfolg = $stmt->execute([$inseratID]);
    
        if ($erfolg){
    
            echo "Ihr Inserat wurde gelöscht!";
    
        } else {
    
            $erfolg;
    
        }
    
    }