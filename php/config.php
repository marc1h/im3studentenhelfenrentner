<?php

$host = "localhost";
$user = "528400_3_1";
$password = "gBW@uwc869pH";
$dbname = "528400_3_1";

$pdo = new PDO('mysql:host='. $host . '; dbname=' . $dbname . ';charset=utf8', $user, $password);
$pdo->exec("set names utf8");