<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Info</title>
</head>
<style>
body
{
  height: 100vh;
    background-image: linear-gradient(to bottom, #070c13, #152a36, #104a59, #006c75, #0e9089);
    background-size: 100% 100%;
        background-position: center;
        background-repeat: no-repeat;
}
.container
{
 max-width: 600px;
  width: 100%;
  
  background-color: #fff;
  padding: 20px 25px;
   margin-left: 28%;
  
  margin-top: 70px;
  text-align: center;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
  border-radius: 15px;
    background: rgba( 255, 255, 255, 0.15 );
box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
backdrop-filter: blur( 2.5px );
-webkit-backdrop-filter: blur( 2.5px );
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
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  text-align:center;
  margin-top:10%;
}

li {
  display: block;
  margin-bottom: 10px;
  font-size: 20px;
  font-weight: bold;
  color:white;
}

li span {
  display: inline-block;
  width: 150px;
  margin-right: 10px;
  text-align: right;
  font-weight: normal;
}

h1 {
  font-size: 32px;
  font-weight: bold;
  margin-bottom: 20px;
  text-align: center;
  color:white;
}
.glow-on-hover {
    width: 230px;
    margin-top:3%;
    margin-left:42%;
    height: 60px;
    font-size:20px;
    border: none;
    outline: none;
    color: #fff;
    background: #111;
    cursor: pointer;
    position: relative;
    z-index: 0;
    border-radius: 10px;
}

.glow-on-hover:before {
    content: '';
    background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5, #002bff, #7a00ff, #ff00c8, #ff0000);
    position: absolute;
    top: -2px;
    left:-2px;
    background-size: 400%;
    z-index: -1;
    filter: blur(5px);
    width: calc(100% + 4px);
    height: calc(100% + 4px);
    animation: glowing 20s linear infinite;
    opacity: 0;
    transition: opacity .3s ease-in-out;
    border-radius: 10px;
}

.glow-on-hover:active {
    color: #000
}

.glow-on-hover:active:after {
    background: transparent;
}

.glow-on-hover:hover:before {
    opacity: 1;
}

.glow-on-hover:after {
    z-index: -1;
    content: '';
    position: absolute;
    width: 100%;
    height: 100%;
    background: #111;
    left: 0;
    top: 0;
    border-radius: 10px;
}

@keyframes glowing {
    0% { background-position: 0 0; }
    50% { background-position: 400% 0; }
    100% { background-position: 0 0; }
}
a
{
font-size:20px;
text-decoration:none;
color:white;
}

</style>
<body>
     <% Integer counter = (Integer)session.getAttribute("counter");
		        if (counter == null) {
		            counter = new Integer(1);
		        } else {
		            counter = new Integer(counter.intValue() + 1);
		        }
        session.setAttribute("counter", counter);
     %>
    <h1>Session Tracking Information</h1>
    <div class="container">
    <ul>
    
        <li>Session ID: <%= session.getAttribute("sessionId") %></li>
        <li>Date: <%= session.getAttribute("date") %></li>
        <li>Time: <%= session.getAttribute("time") %></li>
        <li>Visit Count: <%= session.getAttribute("counter") %></li>
    </ul>
    
    </div>
    <form action="logout" method="get" >
    <button type="submit" class="glow-on-hover"><a href="http://localhost:8080/Wt_pro/login.jsp" >LOG OUT</a></button>
    </form>
</body>
</html>
