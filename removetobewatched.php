<?php
// Get the movie title from the POST data
$title = $_POST['id'];

// Connect to the database
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'feel';

$conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Prepare the SQL statement
$stmt = $conn->prepare("UPDATE movies SET tobewatched = 0 WHERE title = ?");
$stmt4 = $conn->prepare("UPDATE series SET tobewatched = 0 WHERE title = ?");

// Bind the title parameter and execute each statement
$stmt->bind_param("s", $title);
$stmt->execute();
$stmt4->bind_param("s", $title);
$stmt4->execute();


// Close the database connection and return a success response
$stmt->close();
$stmt4->close();
$conn->close();
echo "successfully removed ";
?>
