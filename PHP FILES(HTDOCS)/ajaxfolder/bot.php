
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ChatBot</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
     <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script> 
</head>
<style>

body
{
    background-image: linear-gradient(rgba(125, 128, 126, 0.5), rgba(211, 224, 218, 0.3)),url("img1.jpg");
        
        background-size: 100% 100%;
        background-position: center;
        background-repeat: no-repeat;
       
}
.wrapper
{
    -webkit-animation:flipiny 1s ease 0s 1 normal;
-moz-animation:flipiny 1s ease 0s 1 normal;
-ms-animation:flipiny 1s ease 0s 1 normal;
animation:flipiny 1s ease 0s 1 normal;
-webkit-box-shadow:0px 0px 31px 0px #f4f2e7 ;
-moz-box-shadow:0px 0px 31px 0px #f4f2e7 ;
box-shadow:0px 0px 31px 0px #f4f2e7 ;
}
@-webkit-keyframes flipiny {
0%{ opacity: 0; -webkit-transform: perspective(400px) rotateY(0deg); transform: perspective(400px) rotateY(90deg); }
40%{ -webkit-transform: perspective(400px) rotateY(0deg); transform: perspective(400px) rotateY(-10deg); }
70%{ -webkit-transform: perspective(400px) rotateY(0deg); transform: perspective(400px) rotateY(10deg); }
100%{ opacity: 1; -webkit-transform: perspective(400px) rotateY(0deg); transform: perspective(400px) rotateY(0deg); }
}

@keyframes flipiny {
0%{ opacity: 0; transform: perspective(400px) rotateY(90deg); }
40%{ transform: perspective(400px) rotateY(-10deg); }
70%{ transform: perspective(400px) rotateY(10deg); }
100%{ opacity: 1; transform: perspective(400px) rotateY(0deg); }
}
</style>

<body>
    <div class="wrapper">
        <div class="title">Chatbot</div>
        <div class="form">
            <div class="bot-inbox inbox">
                <div class="icon">
                    <i class="fas fa-user"></i>
                </div>
                <div class="msg-header">
                    <p>Hello there, how can I help you?</p>
                </div>
            </div>
        </div>
        <div class="typing-field">
            <div class="input-data">
                <input id="data" type="text" placeholder="Type something here.." required>
                <button id="send-btn">Send</button>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function(){
            $("#send-btn").on("click", function(){
                $value = $("#data").val();
                $msg = '<div class="user-inbox inbox"><div class="msg-header"><p>'+ $value +'</p></div></div>';
                $(".form").append($msg);
                $("#data").val('');
                
                // start ajax code
                $.ajax({
                    url: 'message.php',
                    type: 'POST',
                    data: 'text='+$value,
                    success: function(result){
                        $replay = '<div class="bot-inbox inbox"><div class="icon"><i class="fas fa-user"></i></div><div class="msg-header"><p>'+ result +'</p></div></div>';
                        $(".form").append($replay);
                        // when chat goes down the scroll bar automatically comes to the bottom
                        $(".form").scrollTop($(".form")[0].scrollHeight);
                    }
                });
            });
        });
    </script>
    
</body>
</html>