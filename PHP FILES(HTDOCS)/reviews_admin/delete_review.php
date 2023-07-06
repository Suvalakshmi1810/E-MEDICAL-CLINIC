<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
  body
  {
    background-image: linear-gradient(to right, #882188, #752989, #622e87, #4e3184, #3a337f);
  }
    /* Styling for Delete Member Modal */
.modal-header {
  background-color: #D9534F;
  color: #FFFFFF;
  text-align: center;
}

.modal-header button.close {
  color: black;
}

.modal-title {
  font-weight: bold;
  font-size: 24px;
}

.modal-body {
  text-align: center;
  padding: 20px;
}

.modal-body p {
  font-size: 20px;
  margin-bottom: 30px;
}

.modal-footer {
  padding: 15px;
  text-align: center;
}

.modal-footer a.btn {
  margin-right: 10px;
  font-size: 18px;
}

.modal-footer a.btn-danger {
  background-color: green;
  border-color:black;
  font-size: 30px;
  text-decoration: none;
  color: white;
  border-radius: 5px;
}

.modal-footer a.btn-danger:hover {
  background-color: #C9302C;
  border-color: #C9302C;
}

</style>
<body>
    <?php
    include_once "connect.php";
    $id=$_GET['id'];
       $sql = "SELECT * FROM reviews where id='$id'";
       $result = $conn->query($sql);
       $row = $result->fetch_assoc();
    ?>
<div class="modal fade" id="delete_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">Delete Member</h4></center>
            </div>
            <div class="modal-body">	
            	<p style="color:white;font-size:24px;" class="text-center">Are you sure you want to Delete</p>
				<!-- <h2 class="text-center"><?php echo $row['username'].' '.$row['email']; ?></h2> -->
			</div>
            <div class="modal-footer">
             
                <a href="admindisplay.php" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Cancel</a>
                <a href="delete.php?id=<?php echo $row['id']; ?>" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Yes</a>
            </div>

        </div>
    </div>
</div>
</body>
</html>