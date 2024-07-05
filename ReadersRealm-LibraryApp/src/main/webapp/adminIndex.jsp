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
		
		button{
			cursor: pointer;
		    background: none;
		    border: none;
		    font-size: 19px;
		    font-weight: 600;
		}
		
	</style>
</head>
<body> 
	<header class="header-container">
		<div class="logo-container">
			<a href="index.html" class="logo-atag"><img src="images/readersrealmlogo.png" alt="Library Logo"class="logo-img" ></a>
		</div>
		<h1 style="text-align:center; display:inline-block; color: white;  padding: 0px 91px;">Library Application</h1>
		<nav class="nav" style="display:inline-block;">
			<ul class="nav-ul">
				<li class="nav-ul-li"><a href="listAllLibrarians" style="text-decoration:none; color:white">Librarian</a></li>
				<li class="nav-ul-li"><a href="listAllUsers" style="text-decoration:none; color:white">Users</a></li>
				<li class="nav-ul-li"><a href="/books" style="text-decoration:none; color:white">Books</a></li>	
				<li class="nav-ul-li"><a href="showRequestForm" style="text-decoration:none;  color:white">Requested Books</a></li>						
				<li class="nav-ul-li"><form action="LogoutServlet" method="post"><button style="color: white;">Logout</button></form></li>	
			</ul>
		</nav>
	</header>
	<main>
	</main>
	
	<footer style="color: white">
 	 &copy;  ReadersRealm.com / All rights reserved
     </footer>

</body>
</html>