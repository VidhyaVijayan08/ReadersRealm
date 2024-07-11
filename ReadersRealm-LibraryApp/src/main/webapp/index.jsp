<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Readers Realm</title>
<style>
	body{ 
		margin:0px;
	}
	 main{
		background-image:url("images/graphicsillustrations_zoom_library_backgrounds01s.webp");
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
	
	.logo-img {
    	height: 108px;
	}
	
	legend{
		padding: 11px 0px;
		font-size: 22px;
	    font-weight: 800;
	}
	
	label{
		font-size: 19px;
	    line-height: 30px;
	}
		
	
header {
    height: 110px;
    background-color: gray;
}
	
	fieldset {
	    margin: 65px 0px 10px 0px;
	    background: white;
	    border: 1px solid white;
	    border-radius: 19px;
	}
	
	button{
		margin: 20px;
	    background-color: gray;
	    border: 1px solid darkgoldenrod;
	    border-radius: 10px;
	    color: white;
	    padding: 9px 32px;
	}
	.logo-atag{
		display: inline-block;
	    vertical-align: middle;
	}
	
	footer{
		background-color: gray;
		color: white;
	    padding: 21px 0;
	    font-size: 19px;
	    text-align: center;
	}
</style>
</head>
<body>
	<header class="header-container" >
		<div class="container-logo" style="width: 5%; margin: 0 auto;">
			<div class="logo-container">
				<a href="index.html" class="logo-atag"><img src="images/readersrealmlogo.png" alt="Library Logo"class="logo-img" ></a>
			</div>
		</div>
	</header>
	<main>
	<form action="/login" method="post" style="margin: 0 auto; padding:90px 0px; color:#000000; font-size:16px;  font-weight:800; line-height:23px; width: 28%; border-color: #000000; border-width: 10px;">         
	    <fieldset>
	        <center> 
	            <legend style="text-align: center; ">Login</legend>
	        </center>
	        <label for="username">Email Id:</label><br>
	        <input type="email" name="EmailId" id="Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z]{2,}$" placeholder="Enter Your Email ID" required><br>
	     	<label for="password">Password:</label><br>
	        <input type="password" name="password" id="password" pattern="[A-Za-z0-9]{6,10}" placeholder="Enter Your Password" required><br>			
	        <center>
	            <button style="margin:10px">Submit</button>
	       		 <div class="footer-buttons" >Don't have an account? 
	       		 	<a href="register.jsp" style="color:blue; text-decoration: none; ">Signup</a>
	       		 </div>
	        </center>     
	    </fieldset> 
	    </form>
	</main>
	
	<footer style="color: white">
 	 &copy;  ReadersRealm.com / All rights reserved
     </footer>
</body>
</html>