<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vandat_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
mysqli_set_charset($conn,'UTF8');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
