<?php
$host = 'localhost';
$db = 'book_management';
$user = 'root'; // Default XAMPP MySQL user
$pass = ''; // Default XAMPP MySQL password

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>