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
	
	.dropdown li:hover {
	}
	
	li:hover .dropdown {
	  display: block;
	}
		
	.logo-container{
		display: inline-block;
		vertical-align: middle;
	}
		
	.logo{
		height: 135px;
	}
		
</style>
</head>
<body>	

	<header class="header-container" >
		<div class="logo-container">
			<a href="index.html" class="logo-atag"><img src="logo.jpg" alt="Library Logo"class="logo" ></a>
			</div>
			<h1 style="text-align:center; display:inline-block; width: 60%; padding: 0 91px;">Library Application</h1>
	</header>
	<main>
		<form action="/register" method="get" style="margin: 0px 700px; color:#ffffff; font-size:16px; padding: 51px 0px; font-weight:800; line-height:23px; width: 28%; border-color: #ffffff; border-width: 10px;">         
		    <fieldset>
		        <center>
		            <legend>Registration Form</legend>
		        </center>
		       <label for="Name">Name:</label><br>
				<input type="text" name="Name" id="Name" placeholder="Enter Your Name" pattern="[A-Za-z\s]+" title="Only alphabets and spaces are allowed" required><br>

				<label for="username">Email Id:</label><br>
				<input type="email" name="EmailId" id="Email" placeholder="Enter Your EmailId" required><br>

				<label for="password">Password:</label><br>
				<input type="password" name="password" id="password" pattern=".{6,}" title="Password must be at least 6 characters" placeholder="Enter Your Password" required><br>

				<label for="type">Type:</label><br>
				<input type="text" name="type" id="type" placeholder="Enter Your Type" required><br>

				<label for="phonenumber">Phone Number:</label><br>
				<input type="tel" name="phonenumber" id="phonenumber" pattern="[0-9]{10}" title="Phone number must be 10 digits" placeholder="Enter Your Phone Number" required><br>

		     
		        <label for="location">Location:</label>
                 <select id="location" name="location" class="form-control" required>
                   <option value="">Location</option>
                                <option value="Chennai">Chennai</option>
                                <option value="Madurai">Madurai</option>
                                <option value="Kerala">kerala</option>
                                 <option value="Karnataka">Karnataka</option>
                                <option value="Hyderabad">Hyderabad</option>
                            </select>
		        <center>
		            <button style="margin:10px">Submit</button>
		        </center> 
		    </fieldset> 
		</form>
	</main>
</body>
</html>