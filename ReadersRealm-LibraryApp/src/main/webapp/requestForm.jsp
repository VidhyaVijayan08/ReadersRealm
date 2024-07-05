<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	main{ 
		background-image: url("images/forms.avif");
		background-repeat: no-repeat;
		background-size: cover;
		margin:0px;
	}
	
	fieldset{
		border: 4px solid white;
		    margin: 123px 0px;
	}
	
	body{
		margin:0px;
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
		padding: 0px;
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
</style>
</head>
<body>
	<header class="header-container" >
		<div class="logo-container">
			<a href="index.html" class="logo-atag"><img src="logo.jpg" alt="Library Logo"class="logo-img" ></a>
			</div>
			<h1 style="text-align:center; display:inline-block;   padding: 0 91px;">Library Application</h1>
	</header>
	<main>
		<form action="saveRequestForm" style="margin: 0 auto; color:#ffffff; font-size:16px;padding: 51px 0 51px 450px; font-weight:800; line-height:23px; width: 28%; border-color: #ffffff; border-width: 10px;">         
		    <fieldset>
		        <center>
		            <legend>Request Book Form</legend>
		        </center>
		        <label for="UserId">Lender Id:</label><br>
		        <input type="text" name="UserId" id="LenderId" placeholder="Enter Your Lender ID :" required><br>
		        <label for="BookId">Book ID:</label><br>
		        <input type="text" name="BookId" id="BookId" placeholder="Enter Your Book Id :" required><br>
		        <label for="Date">Date:</label><br>
		        <input type="date" name="Date" id="Date" placeholder="Enter Your Date :" required><br>
		        <center>
		            <button style="margin:10px">Submit</button>
		        </center> 
		    </fieldset> 
		</form>
	</main>
</body>
</html>