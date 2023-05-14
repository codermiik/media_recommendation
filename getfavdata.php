<?php
// Connect to the database
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'feel';
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

// Check for errors
if (!$conn) {
    die('Could not connect: ' . mysqli_error($conn));
}

// Prepare the SQL query to retrieve favorite movies data
$query = "SELECT title, description, platform, rating FROM movies WHERE favorite = 1";

// Execute the query
$result = $mysqli->query($query);

// Check for errors
if (!$result) {
  die("Error executing query: " . $mysqli->error);
}
$rows = array();
// Process the result set
while ($row = mysqli_fetch_assoc($result)) {
    // Add each row to the array
    $rows[] = $row;
}

// Encode the entire array as JSON
$json = json_encode($rows);

// Echo the JSON response
echo $json;

//Close the database connection
mysqli_close($conn);
?>