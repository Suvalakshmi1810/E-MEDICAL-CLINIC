<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ page import="java.util.Date" %>
    <%@ page import="java.net.URL" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">+
<title>LOGIN FORM</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css?family=Montserrat:600&display=swap');

span{
  position: relative;
  display: inline-flex;
  width: 180px;
  height: 55px;
  margin: 0 15px;
  perspective: 1000px;
}
span a{
  font-size: 15px;
  letter-spacing: 1px;
  transform-style: preserve-3d;
  transform: translateZ(-25px);
  transition: transform .25s;
  font-family: 'Montserrat', sans-serif;
  
}
span a:before,
span a:after{
  position: absolute;
  content: "LOGIN";
  height: 40px;
  width: 130px;
  display: flex;
  align-items: center;
  justify-content: center;
  border: 1px solid black;
  box-sizing: border-box;
  border-radius: 5px;
}
span a:before{
  color: #fff;
  background:#151070;
  transform: rotateY(0deg) translateZ(25px);
}
span a:after{
  color: #000;
  transform: rotateX(90deg) translateZ(25px);
}
span a:hover{
  transform: translateZ(-25px) rotateX(-90deg);
}

   @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
 background-image: url("images/login2.gif");
        
        background-size: 100% 100%;
        background-position: center;
        background-repeat: no-repeat;
        
       
}
.container{
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


.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 2px;
  width: 80px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box label.details{
  display: block;
  font-weight: 500;
  margin-bottom: 10px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 10px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
/* form .button input:hover{
 
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }*/
  
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
 
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
 
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}
.ptag
{
text-align:center;
}
   :root {
  --backgroundColor: rgba(246, 241, 209);
  --colorShadeA: rgb(106, 163, 137);
  --colorShadeB: rgb(121, 186, 156);
  --colorShadeC: rgb(150, 232, 195);
  --colorShadeD: rgb(187, 232, 211);
  --colorShadeE:rgb(21, 16, 112);
}

@import url("https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700");
* {
  box-sizing: border-box;
}
*::before,
*::after {
  box-sizing: border-box;
}

button {
  position: relative;
  display: inline-block;
  cursor: pointer;
  outline: none;
  border: 0;
  vertical-align: middle;
  text-decoration: none;
  font-size: 15px;
  color: var(--colorShadeA);
  color:white;
  text-transform: uppercase;
  font-family: inherit;
}

button.big-button {
  padding: 1em 2em;
  border: 1px solid var(--colorShadeA);
  border-radius: 1em;
  background: var(--colorShadeE);
  transform-style: preserve-3d;
  transition: all 170ms cubic-bezier(0, 0, 1, 1);
}
button.big-button::before {
  position: absolute;
  content: "";
  width: 140px;
  height: 40px;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  box-shadow:box-shadow: 0 5px 10px rgba(0,0,0,0.15);
  border-radius: inherit;
  
  transform: translate3d(0, 0.75em, -1em);
  transition: all 175ms cubic-bezier(0, 0, 1, 1);
}

button.big-button:hover {
  
  transform: translate(0, 0.375em);
}

button.big-button:hover::before {
  transform: translate3d(0, 0.75em, -1em);
}
button.big-button:active {
  transform: translate(0em, 0.75em);
}

button.big-button:active::before {
  transform: translate3d(0, 0, -1em);

  box-shadow: 0 0 0 2px var(--colorShadeB), 0 0.25em 0 0 var(--colorShadeB);
}


a
{
   text-decoration:none;
   color:white;
}
.myview{
 
 position: relative;
 margin: 70px auto 0;

 background-image: linear-gradient(-45deg, #ffff,#ffff);
 -webkit-animation:bounce-in 2s ease-in 0s 1 normal;
-moz-animation:bounce-in 2s ease-in 0s 1 normal;
-ms-animation:bounce-in 2s ease-in 0s 1 normal;
animation:bounce-in 2s ease-in 0s 1 normal;
 
}

.myview:before, .myview:after{
 content: '';
 border-radius: 10px;
 position: absolute;
 left: -2px;
 top: -2px;
 width: calc(100% + 4px);
 height: calc(100% + 4px);
 background-image: linear-gradient(45deg, #ff0000, #ffff00, #00ff00,  #0000ff, #00ffff);
                background-size: 400%;
z-index: -1;
 animation: move 10s alternate infinite;
}
.myview:after{
filter: blur(10px);
}
@keyframes move{
0%, 100%{
background-position: 0 0;
 }
 50%{
 background-position: 100% 0;
 }
}




   
   </style>
<body>
  <div class="myview"> 
  <div class="container">
    <div class="title">Login</div>
    <div class="content">
      <form action="Logincheck" method="post">
        <div class="user-details">
        
           <div class="input-box">
            <label class="details" style="padding-bottom:5px;font-size:19px;">Username</label>
            <input type="text" placeholder="Enter your username" name="username">
          </div>
          <div class="input-box">
            <label class="details"style="padding-bottom:5px;font-size:19px;" >Password</label>
            <input type="password" placeholder="Enter your password" name="password">
          </div> 	
        </div>        
            <div class="ptag">  <button type="submit" class="big-button">LOGIN</button><br><br>
      <div class="ptag"> <p >or </p><br></div> 
     		<div class="ptag">  <button class="big-button"><a href="http://localhost:8080/Wt_pro/registerpage.html" >REGISTER</a></button>
      </form>   
      
    </div>
  </div>
  </div>
  
</body>
</html>