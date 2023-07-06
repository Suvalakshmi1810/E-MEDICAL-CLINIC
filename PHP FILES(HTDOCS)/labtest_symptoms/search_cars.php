<style>
  h1,h3{
     color: white;

  }
  p
  {
    font-size: 16px;
    color: white;
    padding: 20px;
  }
</style>
<?php
// establish database connection
$db_host = "localhost";
$db_user = "root";
$db_pass = "root123";
$db_name = "project";

$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

// get the search query parameters
$test = $_POST['pickup'];


// construct the SQL query to search for available cars
// $sql = "SELECT * FROM cars WHERE pickup_location = '$location' AND car_id NOT IN 
//   (SELECT car_id FROM bookings 
//   WHERE (pickup_date <= '$pickup_date' AND return_date >= '$pickup_date') OR
//         (pickup_date <= '$return_date' AND return_date >= '$return_date') OR
//         (pickup_date >= '$pickup_date' AND return_date <= '$return_date'))";
$sql = " SELECT * FROM lab_tests_symptoms  WHERE lab_test = '$test'";
$result = mysqli_query($conn, $sql);

// display the search results
if (mysqli_num_rows($result) > 0) {
  while ($row = mysqli_fetch_assoc($result)) {
    echo "<div class='car'>
    
           
            <h1>" .$row['lab_test']."</h1>
            <h3>".$row['symptoms']."</h3>
           
            
          </div>";
  }
} else {
  echo "<p>No Symptoms available.</p>";
}

mysqli_close($conn);
?>
