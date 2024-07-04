<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
main{
	background-image: url("books.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	margin:0px; 
}
.input{
	padding: 8px;
    border-radius: 5px;
}

body{
		margin:0px;
	}
	li{
		display: inline-block;
		vertical-align:middle;
	    list-style: none;
	    padding: 0px 15px;
	    font-size: 22px;
    	font-weight: 800;	
	}
	h1{
	text-align: center;
    display: inline-block;
    vertical-align: middle;
    padding: 0px 95px;
	}
	
	.nav-ul{
		display:inline-block;
		vertical-align: middle;
		padding:0px;
	}
	
	.dropdown {
	  padding: 0px;
	  display: none;
	  position: absolute;
	  min-width: 100px;
	  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
	}

	.dropdown li {
	  padding: 12px 3px;
	  text-decoration: none;
	  display: block;
	}
	
	.dropdown li:hover {
	}
	
	li:hover .dropdown {
	  display: block;
	}
		
	.logo-container{
		display: inline-block;
		vertical-align: middle;
	}
		
	.logo-img{
		height: 135px;
	}
	fieldset {
    margin: 269px 0;
    border: 5px solid grey;
    background: beige;
}
button{
	margin: 10px;
    background-color: darkgoldenrod;
    border: 1px solid darkgoldenrod;
    border-radius: 22px;
    color: white;
    padding: 9px 32px;
}
		
</style>
</head>
<body> 
<header class="header-container" >
		<div class="logo-container">
			<a href="index.jsp" class="logo-atag"><img src="images/readersrealmlogo.png" alt="Library Logo"class="logo-img" ></a>
			</div>
			<h1 style="text-align:center; display:inline-block;   padding: 0 91px;">Library Application</h1>
	</header>
	<main>
	<form action="/login" method="post" style="margin: 0 auto; padding:90px 0px; color:#000000; font-size:16px;  font-weight:800; line-height:23px; width: 28%; border-color: #000000; border-width: 10px;">         
	    <fieldset>
	        <center>
	            <legend>Login</legend>
	        </center>
	
	        <label for="username">Email Id:</label><br>
	        <input type="email" name="EmailId" id="Email" placeholder="Enter Your Username" class="input" style="padding: 8px; border-radius: 5px;" required><br>
	     	<label for="password">Password:</label><br>
	        <input type="password" name="password"  id="password" placeholder="Enter Your Password" class="input" required><br>
			<input type="hidden"  name="action" value="login">
			
	        <center>
	            <button style="margin:10px">Submit</button>
	           <a href="register.jsp" style="color:black">New User</a>
	        </center> 
	            
	    </fieldset> 
	    </form>
    </main>
    <footer>
      	<span class="footer-buttons">New user? <a href="register.jsp">Signup</a></span>
    </footer>
</body>
</html>