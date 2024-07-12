<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.chainsys.readersrealm.model.Book,com.chainsys.readersrealm.dao.UserImpl,com.chainsys.readersrealm.dao.UserDAO" %>
    <%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page
	import="java.sql.*, java.io.*, java.util.Base64, com.chainsys.readersrealm.dao.UserImpl,com.chainsys.readersrealm.dao.UserDAO, com.chainsys.readersrealm.model.Book"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page import="java.util.Base64" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Wishlist Page </title>
<style>
	header{
			height: 100px;
			background-color:gray;
		}
		.logo-img{ 
			height: 100px;
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
		
		.card {
		background-color: white;
		border: 1px solid #ccc;
		background-color: white;
		border-radius: 5px;
		padding: 10px;
		margin: 10px;
		width: 200px;
		display: inline-block;
		cursor: pointer;
		transition: transform 0.2s;
	}
		
		.nav-ul{
			display:inline-block;
			vertical-align: middle;
		}
		
		.logo-container{
			display: inline-block;
			vertical-align: middle;
		}
		
	/* 	button{
			cursor: pointer;
		    background: none;
		    border: none;
		    font-size: 22px;
		    font-weight: 600;
		    color: white;
    		font-family: none;
		} */
		.card img {
		max-width: 100%;
		height: 300px;
		object-fit: cover;
	}
	
	.card:hover {
		transform: scale(1.05);
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	}
</style>
</head>
<body>
<header class="header-container">
		<div class="logo-container">
		<a href="index.html" class="logo-atag"><img src="images/readersrealmlogo.png" alt="Library Logo"class="logo-img" ></a>
		</div>
	
		<nav class="nav" style="display:inline-block;">
			<a href="wishList.jsp" class="wishlist-atag"><i class="fa-solid fa-heart"></i></a>
		<a href="" class="logo-atag"> <i class="fa-solid fa-user"></i> </a>
			<ul class="nav-ul">
				<li class="nav-ul-li"><a href="library.jsp" style="text-decoration: none; color: white;">Card</a></li>
				<li class="nav-ul-li"><a href="view.jsp" style="text-decoration: none; color: white;">EBook</a></li>
				<li class="nav-ul-li"><a href="books" style="text-decoration:none; color:white">Books</a></li>
				<li class="nav-ul-li"><a href="showUserRequestForm" style="text-decoration:none;  color:white">Requested Books</a></li>						
				<li class="nav-ul-li"><a href="ourBooks.jsp" style="text-decoration:none; color:white">Our book</a></li>
				<li class="nav-ul-li"><a href="about.jsp" style="text-decoration:none; color:white">About Us</a></li>
  				<li class="nav-ul-li"><form action="index.jsp"><button style="color:white">Logout</button></form></li>		
			</ul> 
		</nav>
	</header>
	<main>
<%
List<Book> books=(ArrayList<Book>)request.getAttribute("wishlistbook");
WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
UserImpl userImpl = (UserImpl) context.getBean("userImpl");

for (Book book : books) {
	String category = book.getBookCategory();
	byte[] imageBytes = book.getBookCover();

  String base64Image = Base64.getEncoder().encodeToString(imageBytes);
		%>
		<div class="card">
			<img src="data:image/jpeg;base64,<%=base64Image%>" alt="Book Cover">
 			<div class="card-details">
				<h3><%=book.getBookTitle()%></h3>
				<p>
					Category:
					<%=category%></p>
				
				<form action="book">
                    <input type="hidden" name="bookid" value="<%=book.getBookId() %>">
				 	<input type="submit" class="search-button" value="View More" name="action">
				</form>
			</div>
		</div>
		<%
		}
		%>
</main>
</body>
</html>