
    <?php
    $host = 'localhost';
    $user = 'root';
    $password = 'root123';
    $database = 'project';
    
    // Connect to the database
    $conn = mysqli_connect($host, $user, $password, $database);
    if (!$conn) {
        die('Error connecting to the database: ' . mysqli_connect_error());
    }
    ?>
