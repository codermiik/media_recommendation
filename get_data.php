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

// Get the selected checkboxes
$question1 = $_POST['question1'];
$question2 = $_POST['question2'];


// Construct the SQL query
$sql = "SELECT title, description, platform, rating FROM $question2 WHERE emotion = '$question1'";

// Execute the query
$result = mysqli_query($conn, $sql);

// Check for errors
if (!$result) {
    die('Query failed: ' . mysqli_error($conn));
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

