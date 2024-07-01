<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
body {
	margin: 0px;
}

li {
	display: inline-block;
	list-style: none;
	padding: 0px 15px;
	font-size: 22px;
	font-weight: 800;
}

h1 {
	text-align: center;
	display: inline-block;
	vertical-align: middle;
	padding: 0px 95px;
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

.dropdown {
	padding: 0px;
	display: none;
	position: absolute;
	min-width: 100px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
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

.about-para {
	font-size: 18px;
	text-align: justify;
	vertical-align: bottom;
	display: inline-block;
	width: 49%;
}

.about-paras {
	font-size: 18px;
	text-align: justify;
	vertical-align: bottom;
	display: inline-block;
	width: 49%;
}

.icon-list-title {
	display: inline-block;
	margin: 0px;
}

.icon-para {
	margin: 0px;
}

button {
	cursor: pointer;
	background: none;
	border: none;
	font-size: 19px;
	font-weight: 600;
}
</style>
<body>
	<header class="header-container">
		<div class="logo-container">
			<a href="index.html" class="logo-atag"><img src="logo.jpg"
				alt="Library Logo" class="logo-img"></a>
		</div>
		<h1
			style="text-align: center; width: 40%; display: inline-block; padding: 0 91px;">Library
			Application</h1>
		<nav class="nav" style="display: inline-block;">
			<ul class="nav-ul">
				<li class="nav-ul-li"><a href="productCategory.jsp"
					style="text-decoration: none; color: black">Books</a></li>
				<li class="nav-ul-li"><a href="about.jsp"
					style="text-decoration: none; color: black">About Us</a></li>
				<li class="nav-ul-li"><form action="LogoutServlet"
						method="post">
						<button>Logout</button>
					</form></li>

			</ul>
		</nav>
	</header>

	<main style="width: 92%; margin: 0 auto;">
		<div class="about">
			<img src="images/librarys.png" alt="library" style="width: 50%">
			<p class="about-para">Computers are used in libraries all over
				the world to provide access to a range of electronic information
				resources and to manage materials (books, journals, videos, and
				other media) held in particular collections. For many people,
				barriers of income, age, gender, or race can limit their access to
				computer technology and thus to the wealth of information that is
				available to others. The public library, with its history of
				providing free information, may offer access to the Internet and
				make a range of information sources available to everyone.
				Increasingly, via funds from national governments or from
				philanthropic agencies such as the Bill and Melinda Gates Foundation
				in the United States, relevant software, hardware, and network
				connections are being made available in public libraries so as to
				minimize this digital divide .</p>
		</div>
		<div class="about">
			<h1 class="about-title">Digital Resources</h1>
		</div>
		<div class="about">
			<p class="about-paras">Librarians today still need to select,
				acquire, and organize quality information resources for their
				patrons. A new challenge is that much information is published
				digitally as well as, or instead of, in print. Electronic journals,
				newspapers, and magazines are common and many books, including
				student textbooks, are available in electronic form as e-books
				(electronic books that are available for download onto e-book
				readers). As "e-learning" and virtual learning environments become
				more commonplace, the concept of a teacher/lecturer imparting
				knowledge in a classroom is yielding to less centralized approaches
				to education. Students are being given more responsibility for
				managing their educational resources through technology and new
				media formats. Librarians, in consultation with teachers, are
				therefore increasingly involved in making appropriate quality
				learning resources available for students. Technological
				developments supporting the collection, management, and preservation
				of digital materials, the description of digital resources using
				techniques such as the MARC format, the creation of digital
				resources, and the implementation of electronic mechanisms for
				searching a range of resources have given rise to the phrase
				"digital library" to describe this new world of library science. see
				also Database Management Software; Educational Software; Information
				Retrieval.</p>
			<img src="images/libraryss.png" alt="library" style="width: 50%">
		</div>
		
	</main>
</body>
</html>