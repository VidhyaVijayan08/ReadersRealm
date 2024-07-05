<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
		body{ 
			margin:0px;
		}
		main{
			background-image:url("bookslibrary.webp");
			background-size: cover;
			background-repeat: no-repeat;
			height:800px;
		}
		
		li{
			display: inline-block;
		    list-style: none;
		    padding: 0px 11px;
		    font-size: 22px;
	    	font-weight: 800;	
		}
		
		h1{
			text-align: center;
		    display: inline-block;
		    vertical-align: middle;
		    padding: 0px 91px;
		}
		
		
		.nav-ul{
			display:inline-block;
			vertical-align: middle;
		}
		
		.logo-container{
			display: inline-block;
			vertical-align: middle;
		}
		
		.logo-img{
			height: 135px;
		}
		
		header{
			height: 135px;
			background-color: gray;
		}
		
		.nav-ul {
    		display: inline-block;
    		vertical-align: middle;
	    	padding: 0px;
		}
		button{
			cursor: pointer;
		    background: none;
		    border: none;
		    font-size: 19px;
		    font-weight: 600;
		}
		.card {
		    width: 10%;
		    cursor: pointer;
		    border: 2px solid;
		    text-align: center;
		    border-radius: 16px;
		    padding: 5px;
		}
		
		.extra {
		    width: 183px;
		    border: 2px solid;
		    padding: 26px 0px;
		    position: absolute;
		    top: 81%;
		    left: 16%;
		}
	</style>
</head>
<body>
<header class="header-container">
		<div class="logo-container">
		<a href="index.html" class="logo-atag"><img src="images/readersrealmlogo.png" alt="Library Logo"class="logo-img" ></a>
		</div>
		<h1 style="text-align:center; display:inline-block; width: 28%; color:white; padding: 0px 91px;">Readers Realm</h1>
		<nav class="nav" style="display:inline-block;">
			<ul class="nav-ul">
				<li class="nav-ul-li"><a href="library.jsp" style="text-decoration: none; color: white;">Card</a></li>
				<li class="nav-ul-li"><a href="view.jsp" style="text-decoration: none; color: white;">EBook</a></li>
				<li class="nav-ul-li"><a href="books" style="text-decoration:none; color:white">Books</a></li>
				<li class="nav-ul-li"><a href="about.jsp" style="text-decoration:none; color:white">About Us</a></li>
  				<li class="nav-ul-li"><form action="login.jsp"><button style="color:white">Logout</button></form></li>		
			</ul> 
		</nav>
	</header>
	<main>
	<button class="extra">
		<a href="view.jsp" style="text-decoration: none; color: black;">EBook</a>
	</button>
	</main>
	<footer>
	</footer>

</body>
</html>