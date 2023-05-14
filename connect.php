<?php

// Get the form data
$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];
$birthday = $_POST['birthday'];

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

// Insert the data into the accounts table
$sql = "INSERT INTO accounts (name, email, password, birthday)
        VALUES ('$name', '$email', '$password', '$birthday')";

if (mysqli_query($conn, $sql)) {
  // Display pop-up message
  echo "<script>alert('Account Registration Successful');</script>";
  // Redirect to login page
  echo "<script>window.location.href='login.html';</script>";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);

?>
