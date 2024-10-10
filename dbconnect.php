<?php

try {
    $host = "localhost";
    $dbname = "myblog_1";
    $dbuser = "root";
    $dbpassword = "";

    // Data source name
    $dsn = "mysql:host=$host;dbname=$dbname";
    $conn = new PDO($dsn, $dbuser, $dbpassword);

    // Set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // echo "connection success";
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

?>
