<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
   %>
    
<%

	String fullname = "";
	String username = "";
	String add = "";
	String phone = "";
	String gender = "";
	
	
	Cookie arr[] = request.getCookies();
	if(arr!=null){
	for(Cookie c:arr)
		
	{
		if(c.getName().equals("fullname"))
				fullname=c.getValue();

		else if(c.getName().equals("username"))
			username=c.getValue();
		else if(c.getName().equals("address"))
			add=c.getValue();
		else if(c.getName().equals("phoneno"))
			phone=c.getValue();
		else if(c.getName().equals("gender"))
				gender=c.getValue();
	}

	}
	

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>APPOINTMENT FORM</title>
</head>
<style>
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
 background-image:url("images/dnagif.gif");
   background-size: 100% 100%;
        background-position: center;
        background-repeat: no-repeat;
}
.container{
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
 
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
  border-radius: 15px;
		 background: rgba( 255, 255, 255, 0.35 );
box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
backdrop-filter: blur( 2.5px );
-webkit-backdrop-filter: blur( 2.5px );
border-radius: 10px;
border: 1px solid rgba( 255, 255, 255, 0.18 );
-webkit-box-shadow:0px 0px 31px 0px #f4f2e7 ;
-moz-box-shadow:0px 0px 31px 0px #f4f2e7 ;
box-shadow:0px 0px 31px 0px #f4f2e7 ;

-webkit-animation:flipinx 1s ease 0s 1 normal;
-moz-animation:flipinx 1s ease 0s 1 normal;
-ms-animation:flipinx 1s ease 0s 1 normal;
animation:flipinx 1s ease 0s 1 normal;

}
@-webkit-keyframes flipinx {
0%{ opacity: 0; -webkit-transform: perspective(400px) rotateX(0deg); transform: perspective(400px) rotateX(90deg); }
40%{ -webkit-transform: perspective(400px) rotateX(0deg); transform: perspective(400px) rotateX(-10deg); }
70%{ -webkit-transform: perspective(400px) rotateX(0deg); transform: perspective(400px) rotateX(10deg); }
100%{ opacity: 1; -webkit-transform: perspective(400px) rotateX(0deg); transform: perspective(400px) rotateX(0deg); }
}

@keyframes flipinx {
0%{ opacity: 0; transform: perspective(400px) rotateX(90deg); }
40%{ transform: perspective(400px) rotateX(-10deg); }
70%{ transform: perspective(400px) rotateX(10deg); }
100%{ opacity: 1; transform: perspective(400px) rotateX(0deg); }
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
  color:black;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 2px;
  width: 180px;
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
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
   color:black;
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
   border-radius: 5px;
   border: none;
   color:black;
   font-size: 18px;
   color:black;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: #1910c4;
   background: rgba( 255, 255, 255, 0.15 );
box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
backdrop-filter: blur( 2.5px );
-webkit-backdrop-filter: blur( 2.5px );
border-radius: 10px;
border: 1px solid rgba( 255, 255, 255, 0.18 );
 }
 form .button input:hover{
 
  background: #1910c4;
  color:white;
  
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
  .time
  {
  text-align:center;
  }
}
</style>
<body>

 
<div class="container">
    <div class="title">Appointment</div>
    <div class="content">
      <form action="appointmentconnect.jsp" >
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" placeholder="Enter your name" name="fname" value="<%=fullname%>">
          </div>
           <div class="input-box">
            <span class="details">Username</span>
            <input type="text" placeholder="Enter your username" name="uname" value="<%=username%>">
          </div>
          
         
          <div class="input-box">
            <span class="details">Address</span>
            <input type="text" placeholder="Enter your addresss" name="address" value="<%=add%>">
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" placeholder="Enter your number" name="pn" value="<%=phone%>">
          </div>
          <div class="input-box">
            <span class="details">Gender</span>
            <input type="text" placeholder="Enter your gender" name="gn" value="<%=gender%>">
          </div>
          <div class="input-box">
            <span class="details">Service</span>
            <input type="text" placeholder="Enter your service for appointment" name="pn">
          </div>
          <div class="input-box">
            <span class="details">Date</span>
            <input type="date" placeholder="Enter the date" name="date">
          </div>
         <div class="input-box">
            <span class="details">Time</span>
            <input type="time" placeholder="Enter the time" name="time">
          </div>
        
        
        </div>
       
          <p> The time of appointment is <%= new java.util.Date() %></p>
          
        <div class="button">
          <input type="submit" value="Appointment">
        </div>
      </form>
    </div>
  </div>


 
</body>
</html>