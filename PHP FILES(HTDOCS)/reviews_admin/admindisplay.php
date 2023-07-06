<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
  
/* table,th,tr,td{
  border-collapse: collapse;
  border: 1px solid black;
  

}
table
{
  margin-left: 300px;
}
th, td {
  text-align: left;
  padding: 18px;
}

th {
  background-color: #ddd;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
} */
body {
  background-image: linear-gradient(to right, #882188, #752989, #622e87, #4e3184, #3a337f);
  }
  table, th, tr, td {
    border-collapse: collapse;
    border: 1px solid black;

  }
  table {
    margin-left: 10%;
    margin-right: 10%;
    width: 80%;
    margin-top: 50px;
    
border-radius: 10px;
border: 1px solid rgba( 255, 255, 255, 0.18 );
-webkit-box-shadow:0px 0px 31px 0px #f4f2e7 ;
-moz-box-shadow:0px 0px 31px 0px #f4f2e7 ;
box-shadow:0px 0px 31px 0px #f4f2e7 ;
-webkit-animation:bounce-in 2s ease-in 0s 1 normal;
-moz-animation:bounce-in 2s ease-in 0s 1 normal;
-ms-animation:bounce-in 2s ease-in 0s 1 normal;
animation:bounce-in 2s ease-in 0s 1 normal;
}
@-webkit-keyframes bounce-in {
0%{ opacity: 0; -webkit-transform: scale(.3); transform: scale(.3); }
50%{ opacity: 1; -webkit-transform: scale(1.0); transform: scale(1.0); }
70%{ -webkit-transform: scale(0.9); transform: scale(0.9); }
100%{ -webkit-transform: scale(1); transform: scale(1); }
}

@keyframes bounce-in {
0%{ opacity: 0; transform: scale(.3); }
50%{ opacity: 1; transform: scale(1.0); }
70%{ transform: scale(0.9); }
100%{ transform: scale(1); }
}
  th, td {
    text-align: left;
    padding: 20px;
    font-size: 20px;
  }
  tr {
    background: rgba(255, 255, 255, 0.15);
    background: rgba(251, 251, 253, 0.652);
    box-shadow: 0 8px 32px 0 rgb(0, 0, 0);
    backdrop-filter: blur(8.5px);
    -webkit-backdrop-filter: blur(8.5px);
    border-radius: 10px;
    border: 1px solid rgba(255, 255, 255, 0.18);
  }
  th {
    background-color: black;
    color: white;
  }

a {
  text-decoration: none;
  color: #333;
}
a:hover
{
   color: palevioletred;
}

</style>
<body>
<?php
include_once "connect.php";

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Retrieve the reviews from the database
$sql = "SELECT * FROM reviews";
$result = $conn->query($sql);

// Display the reviews in a table
echo "<table>";
echo "<tr><th>UserName</th><th>Email</th><th>Comment</th><th>Stars</th>><th>ID</th><th>Edit</th><th>Delete</th></tr>";

while ($row = $result->fetch_assoc()) {
  echo "<tr>";
  echo "<td>" . $row["username"] . "</td>";
  echo "<td>" . $row["email"] . "</td>";
  echo "<td>" . $row["comment"] . "</td>";
  echo "<td>" . $row["stars"] . "</td>";
  echo "<td>" . $row["id"] . "</td>";
  echo "<td><a href='edit_review.php?id=" . $row["id"] . "'>Edit</a></td>";
  echo "<td><a href='delete_review.php?id=" . $row["id"] . "'>Delete</a></td>";
  echo "</tr>";
}

echo "</table>";

// Close the database connection
$conn->close();
?>

</body>
</html>