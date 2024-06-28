<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	body{ 
		margin:0px;
	}
	main{
		background-image:url("bookslibrary.webp");
		background-size: cover;
		background-repeat: no-repeat;
		}
	li{
		display: inline-block;
		vertical-align: middle;
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
	
	legend{
		font-size: 22px;
	    font-weight: 800;
	}
	
	label{
		font-size: 19px;
	    line-height: 21px;
	}
		
	header{
		height: 135px;
	}
	
	fieldset {
	    margin: 65px 0 10px 0;
	    background: white;
	    border: 1px solid white;
	    border-radius: 19px;
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
			<a href="index.html" class="logo-atag"><img src="logo.jpg" alt="Library Logo"class="logo-img" ></a>
			</div>
			<h1 style="text-align:center; display:inline-block; width: 60%;  padding: 0px 91px;">Library Application</h1>
		
	</header>
	<main>
	<form action="SaveLibrary" method="get" style="margin: 0 auto; padding:90px 0px; color:#000000; font-size:16px;  font-weight:800; line-height:23px; width: 28%; border-color: #000000; border-width: 10px;">         
	    <fieldset>
	        <center> 
	            <legend style="text-align: center">Login</legend>
	        </center>
	        <label for="username">Email Id:</label><br>
	        <input type="email" name="EmailId" id="Email" placeholder="Enter Your Email ID" required><br>
	     	<label for="password">Password:</label><br>
	        <input type="password" name="password" id="password" placeholder="Enter Your Password" required><br>			
	        <center>
	            <button style="margin:10px">Submit</button>
	       		 <div class="footer-buttons" >Don't have an account? 
	       		 	<a href="register.html" style="color:blue; text-decoration: none; ">Signup</a>
	       		 </div>
	            
	        </center>     
	    </fieldset> 
	    </form>
	</main>
	
	<footer>
	 &copy; 
    </footer>
</body>
</html>