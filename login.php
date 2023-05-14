<?php

// Get the form data
$email = $_POST['email'];
$password = $_POST['password'];

// Connect to the database
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "feel";

$conn = mysqli_connect($host, $user, $pass, $dbname);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

// Check if the user exists in the database
$sql = "SELECT * FROM accounts WHERE email='$email' AND password='$password'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // Redirect to login page
  echo "<script>window.location.href='home.html';</script>";
} else {
  // Display pop-up message
  echo "<script>alert('Invalid Credentials!');</script>";
  echo "<script>window.location.href='login.html';</script>"; 
}

mysqli_close($conn);

?>
