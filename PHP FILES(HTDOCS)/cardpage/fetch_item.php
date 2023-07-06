<style>
.card
{
	transition:all 0.5s ease-in-out;
    animation-duration: 1s;
	-webkit-animation:bounce-in 2s ease-in 0s 1 normal;
-moz-animation:bounce-in 2s ease-in 0s 1 normal;
-ms-animation:bounce-in 2s ease-in 0s 1 normal;
animation:bounce-in 2s ease-in 0s 1 normal;
-webkit-box-shadow:0px 0px 31px 0px #f4f2e7 ;
-moz-box-shadow:0px 0px 31px 0px #f4f2e7 ;
box-shadow:0px 0px 31px 0px #f4f2e7 ;
	
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
.card:hover
{
	transform: translate(0, -20px);
}
.btn1
{
	font-size: 110%;
				font-weight: 100;
				background: #ef6e58;
				border-color: #ef6e58;
				box-shadow: 0 3px 0 #bd432e;
				color: #fff;
				margin-top: 10px;
				cursor: pointer;
				text-decoration: none;
				width: 100%;
				height:30px;
}
.btn1:hover
{
	color: white;
	background: #135f85;
	border-color: #09405c;
	box-shadow: 0 3px 0 #09405c;
}

</style>

<?php

//fetch_item.php

include('database_connection.php');

$query = "SELECT * FROM tbl_product ORDER BY id DESC";

$statement = $connect->prepare($query);

if($statement->execute())
{
	$result = $statement->fetchAll();
	$output = '';
	foreach($result as $row)
	{
		$output .= '
		<div class="col-md-3" style="margin-top:20px;">  
            <div class="card" style="border:1px solid #333; background-color:#f1f1f1; border-radius:8px; padding:16px; height:380px;border-radius: 15px;
			background: rgba(251, 251, 253, 0.652);
			box-shadow: 0 8px 32px 0 rgb(0, 0, 0);
			backdrop-filter: blur(10.5px);
			-webkit-backdrop-filter: blur(8.5px);
			border-radius: 10px;
			border: 1px solid rgba(255, 255, 255, 0.18);" align="center">
            	<img style="height: 180px; width:180px;" src="images/'.$row["image"].'" class="img-responsive" /><br />
            	<h4 class="text-info">'.$row["name"].'</h4>
            	<h4 class="text-danger">$ '.$row["price"] .'</h4>
            	<input type="text" name="quantity" id="quantity' . $row["id"] .'" class="form-control" value="1" />
            	<input type="hidden" name="hidden_name" id="name'.$row["id"].'" value="'.$row["name"].'" />
            	<input type="hidden" name="hidden_price" id="price'.$row["id"].'" value="'.$row["price"].'" />
				<input type="button" name="add_to_cart" id="'.$row["id"].'" style="font-size: 110%;
				font-weight: 100;
				background: #ef6e58;
				border-color: #ef6e58;
				box-shadow: 0 3px 0 #bd432e;
				color: #fff;
				margin-top: 10px;
				cursor: pointer;
				text-decoration: none;
				width: 100%;
				height:30px;" class="btn btn-success form-control add_to_cart" value="Add to Cart" />
            </div>
        </div>
		';
	}
	echo $output;
}


?>