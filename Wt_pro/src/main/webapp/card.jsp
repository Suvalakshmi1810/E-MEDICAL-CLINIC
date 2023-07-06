<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
*{padding:0; margin:0; box-sizing: border-box; font-family:sans-serif;}
header{
	width: 100vw;
	min-height: 100vh;
	 background-image: url("images/cardgif.gif");
        
        background-size: 100% 100%;
        background-position: center;
        background-repeat: no-repeat;
	font-size: 1.2rem;
	display: flex;
	justify-content: center;
	align-items: center;
}
.container{
	background: white;
	max-width: 800px;
	min-height: 500px;
	display: flex;
	justify-content:space-between;
	align-items: flex-start;
	padding: 0.5rem 1.5rem;
	border-radius: 15px;
background: rgba( 255, 255, 255, 0.35 );
box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
backdrop-filter: blur( 10px );
-webkit-backdrop-filter: blur( 10px );
border-radius: 10px;
border: 1px solid rgba( 255, 255, 255, 0.18 );

-webkit-box-shadow:0px 0px 31px 0px #f4f2e7 ;
-moz-box-shadow:0px 0px 31px 0px #f4f2e7 ;
box-shadow:0px 0px 31px 0px #f4f2e7 ;
}
.left{
	flex-basis: 50%;
}
.right{
	flex-basis: 50%;
}
form{
	padding: 1rem;
}

h3{
	margin-top: 1rem;
	
	}

form input[type="text"]{
	width: 100%;
	padding: 0.5rem 0.7rem;
	margin: 0.5rem 0;
	 outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.container .left input:focus,
.container .left input:valid{
  border-color: #9b59b6;
}
.container .right select
{
height:35px;
 border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}

form input[type="password"]{
	width: 100%;
	padding: 0.5rem 0.7rem;
	margin: 0.5rem 0;
	outline: none;
}

#zip{
	display: flex;
	margin-top: 0.5rem;
}
#zip select{
margin-top: 0.5rem;
	padding: 0.5rem 0.7rem;
}
#zip label{
margin-top: 1rem;
	padding: 0.5rem 0.7rem;
}
#zip input[type="number"]{
    width: 100%;
    
	padding: 0.5rem 0.7rem;
	margin-left: 5px;	
}
input[type="number"]{
    width: 100%;
    height:30px;
    
	padding: 0.5rem 0.7rem;
	margin-left: 5px;	
}




@media only screen and (max-width: 770px){
	.container{
		flex-direction: column;
	}
	body{
		overflow-x: hidden;
	}
	label
	{
	color:white;
	}
}
.btn{
   
   border-radius: 5px;
 
	width: 100%;
	padding: 0.7rem 1.5rem;
	margin-top:25px;
	   
	color: white;
	border: none;
	outline: none;

	cursor: pointer;
   
   border: none;
   color: #fff;
   font-size: 18px;
   color:white;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   background:#094769;
   border:1px solid black;
 }
 .btn:hover{
 
  background: #1910c4;
  color:white;
  
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}

</style>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String userid = request.getParameter("uname1");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root123");
Statement st = con.createStatement();
ResultSet resultSet = st.executeQuery("select * from reg where username='" + userid + "'");
//value=<%=resultSet.getString("username")
%>
<header>
	<div class="container">																					
		<div class="left">
			<h3>BILLING ADDRESS</h3>
			<form>
				User name
				<input type="text" name="" placeholder="Enter username" value=<%=session.getAttribute("fullname") %>>
				Name
				<input type="text" name="" placeholder="Enter name" value=<%=session.getAttribute("fullname") %>>

				Address
				<input type="text" name="" placeholder="Enter address" value=<%=session.getAttribute("address") %>>
				
				Phone Number
				<input type="text" name="" placeholder="Enter Phone number" value=<%=session.getAttribute("phoneno") %>>
			
				
		
			</form>
		</div>
		<div class="right">
			<h3>PAYMENT</h3>
			<form action="payment" method="post">
				Accepted Card <br>
				<img src="images/card1.png" width="100">
				<img src="images/card2.png" width="50">
				<br><br>

				Credit card number
			<input type="text" name="cardnum" placeholder="Enter card number" >
				
				Expiry month
				<select name="month">
							<option>Choose Month..</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							
						</select>
				<div id="zip">
					<label>
						Expiry year
						<select name="year">
							<option>Choose Year..</option>
							<option>2023</option>
							<option>2024</option>
							<option>2025</option>
							<option>2026</option>
							<option>2027</option>
							<option>2028</option>
							
						</select>
					</label>
						<label>
						CVV
						<input type="password" name="cvv" placeholder="CVV">
					</label>
				
				</div>
					Total amount
				<input type="text" name="amount" placeholder="Total amount to pay is displayed">
				<input type="submit" class="btn" name="" value="PAY">
			</form>
			
		</div>
	</div>
	</header>
</body>
</html>