<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
 
#reviews-list {
    list-style: none;
    margin: 0;
    padding: 0;
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
#reviews-list li {
    
    border: 3px solid #ccc;
    margin-bottom: 20px;
    padding: 10px;
    border-radius: 15px;
    background: rgba( 255, 255, 255, 0.15 );
box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
backdrop-filter: blur( 2.5px );
-webkit-backdrop-filter: blur( 2.5px );
border-radius: 10px;
border: 1px solid rgba( 255, 255, 255, 0.18 );
}

.rating {
    color: #ff9800;
    font-size: 1.3em;
    margin: 0 0 10px;
}

.comment {
    font-size: 1em;
    margin: 0 0 10px;
    white-space: pre-line;
}

.meta {
    font-size: 0.9em;
    margin: 0;
    text-align: right;
}
h1{
    text-align: center;
}
.button1
{
    height:25px;
    width: 40px;
    background: #eda32b;
        border-radius: 10px;
        border-color: #fff;
        margin-left:10px;
}
.block
{
display: flex;
flex-direction: row;
}
.design1{
    font-size: 22px;
    margin-left: 50px;
}
.rating
{
    margin-left: 50px;
}
</style>
<body>
 <?php
 
 include_once "connect.php";
 $query = 'SELECT * FROM reviews order by id desc';
$result = mysqli_query($conn, $query);
$reviews = mysqli_fetch_all($result, MYSQLI_ASSOC);
 
 ?>   
 <section>
    <h1 style="font-size: 35px;color:black;font-family:Comic Sans MS">EXISTING REVIEWS</h1>
    <ul id="reviews-list">
        <?php foreach ($reviews as $review): ?>
        <li>
        <?php $id= htmlspecialchars($review['id']); ?>
            <h3 class="design1"><?php echo htmlspecialchars($review['username']); ?></h3>
            <h3 class="design1"><?php echo htmlspecialchars($review['email']); ?></h3>
            <div class="block">
            <p class="design1" class="comment" id="Mytext1"><?php echo nl2br(htmlspecialchars($review['comment'])); ?></p> </div>
            <div class="block">
            <p class="rating" id="Mytext2"><?php echo str_repeat('★', $review['stars']); ?></p> </div>

           
        </li>
        <?php endforeach; ?>
    </ul>
</section>
 <!-- <?php
 include_once "connect.php";
   if(isset($_GET['del1']))
   {
    
    echo "pressed";
    $stmt = $conn->prepare("delete from reviews where id='6'");
    $stmt->execute();
$stmt->close();
   }
?>  -->
<!-- <script>
    function editText()
    {
        window.alert("button pressed");
        var newInput = document.createElement("input");
			newInput.type = type;
			newInput.name = name;
            var parent = document.getElementById("reviews-list");
			parent.appendChild(newInput);
    }
</script> -->
<?php
mysqli_close($conn);
?>
</body>
</html>