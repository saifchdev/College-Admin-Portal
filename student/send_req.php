<?php

$servername="localhost";
$username="root";
$password="";
$dbname="casp";


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
session_start();

$rollno=$_SESSION['rollno'];
$phone= $_POST["contact"];
$email= $_POST["email"];









$sql = "INSERT INTO `request` (rollno,email,contact)
VALUES ('$rollno','$email','$phone')";

if ($conn->query($sql) === TRUE) {
    header('Location:index.php');
 
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?> 