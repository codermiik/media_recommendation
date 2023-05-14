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

// Construct the SQL query
// Construct the SQL query
$sql = "SELECT title, description, platform, rating, 'movies' as category FROM movies WHERE watched = 1
        UNION
       
        SELECT title, description, platform, rating, 'series' as category FROM series WHERE watched = 1";

// Execute the query
$result = mysqli_query($conn, $sql);

// Check for errors
if (!$result) {
    die('Query failed: ' . mysqli_error($conn));
}
// Check if any movies were found
if ($result->num_rows > 0) {
    // Loop through the results and store each movie in an array
    $movies = array();
    while ($row = $result->fetch_assoc()) {
      $movies[] = $row;
    }
    // Send the array of movies as a JSON response
    header("Content-Type: application/json");
    echo json_encode($movies);
  } else {
    // If no movies were found, send an empty JSON response
    header("Content-Type: application/json");
    echo json_encode(array());
  }
  
  // Close the database connection
  $conn->close();
?>
