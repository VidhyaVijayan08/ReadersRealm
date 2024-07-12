<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%@ page import="java.util.Base64" %>
<%@ page import="com.chainsys.readersrealm.model.Book,com.chainsys.readersrealm.dao.UserImpl,com.chainsys.readersrealm.dao.UserDAO" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="org.springframework.context.ApplicationContext" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Library Application</title>
    <style>
     <style>
body {
	margin: 0px;
}
/* main{
			background-image:url("bookslibrary.webp");
			background-size: cover;
			background-repeat: no-repeat;
			height:800px;
		} */
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
	font-size: 19px;
	font-weight: 600;
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

h2 {
	color: white;
}

.card-details {
	text-align: center;
}

main {
	padding: 55px 0px;
	text-align: center;
	background-color: darkblue;
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

.card-span{
	font-weight: 800;
}
</style>
</head>
<body>
<header class="header-container">
		<div class="logo-container">
			<a href="index.html" class="logo-atag"><img src="logo.jpg" alt="Library Logo " class="logo-img"></a>
		</div>
		<h1 style="text-align: center; display: inline-block; width: 31%; padding: 0 91px;">Library	Application</h1>
		<nav class="nav" style="display: inline-block;">
			<ul class="nav-ul">
				<li class="nav-ul-li"><a href="view.html" style="text-decoration: none; color: black;">EBook</a></li>
				<li class="nav-ul-li"><a href="userProductCategory.jsp" style="text-decoration: none; color: black">Books Category</a></li>
				<li class="nav-ul-li"><a href="about.html" style="text-decoration: none; color: black">About Us</a></li>
				<li class="nav-ul-li">
					<form action="LogoutServlet" method="post">
						<button>Logout</button>
					</form>
				</li>
			</ul>
		</nav>
	</header>
<main>
<h2>Books</h2>
  <%
  
  ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
  UserImpl userImpl = (UserImpl) context.getBean("userImpl");
  int bookId=Integer.parseInt(request.getParameter("bookid"));
  Book books = new Book();
  books.setBookId(bookId);
  List<Book> bookList = userImpl.retrievesDetail(books);
  for (Book book : bookList) {
		String category = book.getBookCategory();
		byte[] imageBytes = book.getBookCover();
		String base64Image = Base64.getEncoder().encodeToString(imageBytes);
%>
  <div class="card">
      <img src="data:image/jpeg;base64,<%= base64Image %>" alt="Book Cover">
      <div class="card-details">
         <h3><%= book.getBookTitle() %></h3>
         <p>Category: <%= book.getBookCategory() %></p>
         <a href="requestForm.jsp">
             <input type="submit" class="search-button" value=" Request" name="action">
         </a>
     </div> 
 </div>
<%
}
%>
</main>
</body>
</html>
