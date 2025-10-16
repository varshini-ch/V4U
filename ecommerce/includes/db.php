<?php
$host = 'containers-us-west-19.railway.app'; // Replace with your Railway host
$dbname = 'railway';                          // Replace with your Railway database name
$user = 'root';
$password = 'YGFPuRaPUubtLxRQXvqONNWsVgGPpzQp';

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $password);
    // Set PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully!";
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>
