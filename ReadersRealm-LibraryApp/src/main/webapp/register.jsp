<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	fieldset{
		border: 4px solid black;
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
		
	.logo-container {
	    display: inline-block;
	    vertical-align: middle;
	    width: 43%;
	}
	
	header {
	    height: 135px;
	    background-color: gray;
	}
		
		footer{
		background-color: gray;
		color: white;
	    padding: 21px 0;
	    font-size: 19px;
	    text-align: center;
	}
	
	.register-image-container{
		display: inline-block;
		vertical-align: middle;
		width: 50%;
		text-align:center;
	}
	
.register-form-container {
    display: inline-block;
    width: 49%;
    vertical-align: middle;
}

form {
            margin: 0 auto;
            width: 60%;
            background-color: #ffffff;
            border: 1px solid #ccc;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        fieldset {
            border: none;
            margin: 0;
            padding: 0;
        }

        legend {
            font-size: 1.5em;
            font-weight: bold;
            color: #333333;
            margin-bottom: 20px;
            text-align: center;
            margin: 0px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333333;
            font-weight: bold;
        }

        input[type=text],
        input[type=email],
        input[type=password],
        input[type=tel],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 1em;
        }

        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 1em;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s ease;
            width: 100%;
            margin-top: 10px;
        }

        button:hover {
            background-color: #45a049;
        }
</style>
</head>
<body>	

	<header class="header-container">
		<div class="container-logo" style="width: 30%; margin: 0 auto; padding: 10px 0;">
			<div class="logo-container">
				<a href="index.html" class="logo-atag"><img src="images/readersrealmlogo.png" alt="Library Logo" style="width: 91%;" class="logo-img" ></a>
			</div>
			<h1 style="text-align:center; display:inline-block; color:white;  padding: 0px;">Readers Realm</h1>	
		</div>
	</header>
	<main>

<div class="register-image-container">
		<img alt="register" src="images/login-background.png" style="width: 77%;">
</div>
<div class="register-form-container">
<form action="/register" method="get" style="margin: 40px 91px; color:#000000; font-size:16px; padding: 15px 0px; font-weight:800; line-height:23px; border-color: #ffffff; border-width: 10px;">         
		    <fieldset>
		        <center>
		            <legend>Registration Form</legend>
		        </center>
		       <label for="Name">Name:</label>
				<input type="text" name="Name" id="Name" placeholder="Enter Your Name" pattern="[A-Za-z\s]+" title="Only alphabets and spaces are allowed" required><br>

				<label for="username">Email Id:</label>
				<input type="email" name="EmailId" id="Email" placeholder="Enter Your EmailId" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z]{2,}$" required><br>

				<label for="password">Password:</label>
				<input type="password" name="password" id="password" pattern="[A-Za-z0-9]{6,10}" title="Password must be at least 6 characters" placeholder="Enter Your Password" required><br>

				<label for="type">Type:</label>
				<input type="text" name="type" id="type" placeholder="Enter Your Type" required><br>

				<label for="phonenumber">Phone Number:</label>
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
		            <button>Submit</button>
		        </center> 
		    </fieldset> 
		</form>
</div>
	</main>
	
	<footer style="color: white">
 	 &copy;  ReadersRealm.com / All rights reserved
     </footer>
</body>
</html>