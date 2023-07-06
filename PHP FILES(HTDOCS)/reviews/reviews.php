<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<style>
  body {
    background-image: linear-gradient(rgba(125, 128, 126, 0.5), rgba(211, 224, 218, 0.3)), url("imageb.jpg");

    background-size: 100% 100%;
    background-position: center;
    background-repeat: no-repeat;
  }

  .sample {
    margin-left: 100px;
    font-size: 20px;

  }

  form {
    margin-left: 30%;
    max-width: 500px;
    width: 100%;
    background-color: #fff;
    padding: 25px 30px;
    border-radius: 5px;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
    border-radius: 15px;
    background: rgba(251, 251, 253, 0.652);
    box-shadow: 0 8px 32px 0 rgb(0, 0, 0);
    backdrop-filter: blur(8.5px);
    -webkit-backdrop-filter: blur(8.5px);
    border-radius: 10px;
    border: 1px solid rgba(255, 255, 255, 0.18);
  }

  h1 {
    text-align: center;
  }

  input {
    height: 30px;
    border-radius: 10px;
  }

  .button2 {
    margin-left: 160px;
    height: 40px;
    width: 150px;
    background: #eda32b;
    border-radius: 10px;
    border-color: #fff;

  }
</style>

<body>
  <?php
  include_once "existingreviews.php";
  ?>
  <h1>Review Form</h1>
  <form method="POST">
    <label class="sample" for="name">Name:</label><br>
    <input class="sample" type="text" name="name" id="name" required><br><br><br><br>

    <label class="sample" for="email">Email:</label><br>
    <input class="sample" type="email" name="email" id="email" required><br><br><br><br>
    <label class="sample" for="comment">Comment:</label><br>
    <textarea class="sample" name="comment" required></textarea><br><br><br><br>
    <label class="sample" for="rating">Rating:</label>
    <input class="sample" type="number" name="rating" id="rating" min="1" max="5" required>

    <br><br><br>

    <button class="button2" type="submit" onclick="alert('You have submitted the review THANK YOU!');" name="submit">Submit Review</button>
  </form>
  <?php

  if ($_POST) {
    include "connect.php";
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }

    $name = $_POST["name"];
    $email = $_POST["email"];

    $comment = $_POST["comment"];
    $rating = $_POST["rating"];

    // Prepare statement
    $stmt = $conn->prepare("INSERT INTO reviews (username, email, comment, stars) VALUES ('$name','$email','$comment','$rating')");
    //$stmt->bind_param("sss", $name, $email, $comment, $rating);
 

    $stmt->execute();
    $stmt->close();
    $conn->close();
    header("Location:reviews.php");
    exit();
  }
  ?>
</body>

</html>