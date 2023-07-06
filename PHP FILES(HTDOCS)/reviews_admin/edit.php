<?php
	session_start();
	include_once('connect.php');

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$name = $_POST['username'];
		$email = $_POST['email'];
		$comment = $_POST['comment'];
        $stars = $_POST['stars'];
		$sql = "UPDATE reviews SET username = '$name',  email= '$email', comment = '$comment', stars='$stars' WHERE id = '$id'";

		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = 'Member updated successfully';
		}
		///////////////

		//use for MySQLi Procedural
		// if(mysqli_query($conn, $sql)){
		// 	$_SESSION['success'] = 'Member updated successfully';
		// }
		///////////////
		
		else{
			$_SESSION['error'] = 'Something went wrong in updating member';
		}
	}
	else{
		$_SESSION['error'] = 'Select member to edit first';
	}

	header('location: admindisplay.php');

?>