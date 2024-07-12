<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.sql.*, java.io.*, java.util.Base64, com.chainsys.readersrealm.dao.UserImpl, com.chainsys.readersrealm.model.Book"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<style>
	body {
		margin: 0px;
	}
	li {
		display: inline-block;
		list-style: none;
		padding: 0px 11px;
		font-size: 22px;
		font-weight: 800;
	}
	
	h1 {
		text-align: center;
		display: inline-block;
		vertical-align: middle;
		padding: 0px 91px;
	}
	
	.nav-ul {
		display: inline-block;
		vertical-align: middle;
	}
	
	.logo-container {
		display: inline-block;
		vertical-align: middle;
	}
	
	.logo-img {
		height: 135px;
	}
	
	header {
		height: 135px;
	}
	
	.nav-ul {
		display: inline-block;
		vertical-align: middle;
		padding: 0px;
	}
	
	button {
		cursor: pointer;
		background: none;
		border: none;
		font-size: 22px;
		font-weight: 600;
		color: white;
		font-family: none;
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
	.buttons{
		background-image: url("images/like-icon.png");
		    background-size: cover;
    background-repeat: no-repeat;
    width: 17%;
	}
	
	h2 {
		color: white;
	}
	
	.card-details {
		text-align: center;
	}
	
	main {
		padding: 5px 0px;
		text-align: center;
		background-color: darkblue;
	}
	.fa-solid.fa-heart.fa {
	    color: black;
	}
	
	
	.fa-solid {
	    color: white;
	    padding: 0 5px;
	}
	i.fa-solid.fa-heart.fa:hover {
    transform: scale(1.25);
}
	
	
	.logo-img{
			height: 100px;
		}
	
	header{
			height: 100px;
			background-color:gray;
	}
		
	h2 {
		text-align: center;
		font-size: 45px;
		font-weight: 800;
		color: white;
	}
	
	.card img {
		max-width: 100%;
		height: 300px;
		object-fit: cover;
	}
	
	.card:hover {
		transform: scale(1.05);
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	}
	
	 .wishlist-atag .fa-solid.fa-heart.fa {
        color: red; /* Set the color of the heart icon to red */
    }
</style>
</head>
<body>

	<header class="header-container">
		<div class="logo-container">
			<a href="index.html" class="logo-atag"><img src="images/readersrealmlogo.png"
				alt="Library Logo " class="logo-img"></a>
		</div>
		<nav class="nav" style="display: inline-block;">
			<ul class="nav-ul">
				<li class="nav-ul-li"><a href="view.jsp" style="text-decoration: none; color: white;">EBook</a></li>
				<li class="nav-ul-li"><a href="userProductCategory.jsp" style="text-decoration: none; color: white">Books Category</a></li>
				<li class="nav-ul-li"><a href="about.jsp" style="text-decoration: none; color: white">About Us</a></li>
				<li class="nav-ul-li">
					<form action="index.jsp" method="post">
						<button>Logout</button>
					</form>
				</li>
			</ul>
		</nav>
	</header>
	<main>
		<h2 style="display: inline-block; width: 63%">Books</h2>
		<div class="button-container" style="display: inline-block;">
			<form action="search.jsp">
				<input type="text" name="BookTitle" id="Search" placeholder="Search ">
				 <input type="submit" class="search-button" value="search" name="action">
			</form>
		</div>

		<%
 			
			List<Book> users=(ArrayList<Book>)request.getAttribute("bookList");
			for (Book book : users) {
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
				
				<form action="book" style="padding: 15px 0; ">
                    <input type="hidden" name="bookid" value="<%=book.getBookId() %>">
				 	<input type="submit" class="search-button" value="View More" name="action">
				</form>
				<form action="retrieveWish" method="post">
					<input type="hidden" name="bookId" value="<%=book.getBookId() %>">
					<button class="buttons">
					<a href="" class="wishlist-atag">	   
						<i class="fa-solid fa-heart fa"></i>
						</a>
					</button>
				</form>
			</div>
		</div>
		<%
		}
		%>
	</main>
</body>
</html>
