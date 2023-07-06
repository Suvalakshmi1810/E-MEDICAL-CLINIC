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
	/* Style for modal background */
.modal-backdrop {
  opacity: 0.7;
  background-color: #000;
}

/* Style for modal header */
.modal-header {

  border-bottom: 1px solid #ddd;
  text-align: center;
  padding: 10px;
}

/* Style for modal title */
.modal-title {
  font-size: 24px;
  font-weight: bold;
  margin-top: 10px;
  margin-bottom: 10px;
}

/* Style for modal body */
.modal-body {
  padding: 30px;
  display: flex;
  justify-content: center;
}

/* Style for modal footer */
.modal-footer {

  border-top: 1px solid #ddd;
  text-align: center;
  padding: 20px;
}

/* Style for form control */
.form-control {
  border-radius: 0;
  border: 1px solid #ccc;
}
form{
	max-width: 700px;
  width: 100%;

  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
  border-radius: 15px;
background: rgba( 255, 255, 255, 0.35 );
box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
backdrop-filter: blur( 3px );
-webkit-backdrop-filter: blur( 3px );
border-radius: 10px;
border: 1px solid rgba( 255, 255, 255, 0.18 );
}
/* Style for form group label */
.modal-label {
  font-size: 18px;
  font-weight: bold;
  margin-top: 20px;
  margin-bottom: 20px;
}

/* Style for form group input */
.form-group input {
  font-size: 16px;
  padding: 15px;
  border-radius: 5px;
  border: 1px solid black;
}

/* Style for form group input:focus */
.form-group input:focus {
  outline: none;
  border-color: #2196F3;
  box-shadow: 0 0 10px #2196F3;
}

/* Style for form group button */
button {
	height: 50px;
	width: 100px;
  font-size: 20px;
  border-radius: 5px;
  border: none;
  color: #fff;
  background-color: green;
  padding: 10px 20px;
}

/* Style for form group button:hover */
.form-group button:hover {
  background-color: #0d8bf2;
  cursor: pointer;
}

/* Style for close button */
.close {
  font-size: 26px;
  font-weight: bold;
  color: #000;
}

/* Style for close button:hover */
.close:hover {
  color: #aaa;
  text-decoration: none;
  cursor: pointer;
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
<div class="modal fade" id="edit_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">Edit Member</h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="edit.php">
				<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Username:</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="username" value="<?php echo $row['username']; ?>">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">email:</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="email" value="<?php echo $row['email']; ?>">
					</div>
				</div>
                <div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Comment</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="comment" value="<?php echo $row['comment']; ?>">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Stars</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="stars" value="<?php echo $row['stars']; ?>">
					</div>
				</div>
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="edit" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Update</a>
			</form>
            </div>

        </div>
    </div>
</div>
</body>
</html>