<?php

$host         = "localhost";

$username     = "root";

$password     = "";

$dbname       = "dbphone";

try {

    $dbconn = new PDO('mysql:host=localhost;dbname=dbphone', $username, $password);

} catch (PDOException $e) {

    print "Error!: " . $e->getMessage() . "<br/>";

    die();

}