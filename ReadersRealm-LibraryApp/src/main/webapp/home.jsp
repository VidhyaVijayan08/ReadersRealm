<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>

.iframeLink{
			text-decoration:none;
		}

		body{
			margin:0px;
		}
		
		li{
			display: inline-block;
		    list-style: none;
		    padding: 0px 15px;
		    font-size: 22px;
	    	font-weight: 800;	
		}
		
		h1{
			text-align: center;
		    display: inline-block;
		    vertical-align: middle;
		    padding: 0px 91px;
		    width: 60%;
		}
		
		.nav{
		    display: inline-block;
    width: 80%;
    text-align: right;
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
			height: 100px;
		}
		
		header{
			height: 100px;
			background-color:gray;
		}
		.card {
			color: #000;
			border: 1px solid #ccc;
			border-radius: 5px;
			padding: 10px;
			margin: 10px;
			width: 200px;
			display: inline-block;
			cursor: pointer;
			transition: transform 0.2s;
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
		body{ 
			margin:0px;
		}
		/* main{ */
/* 			background-image:url("bookslibrary.webp");
 */			/* background-size: cover;
			background-repeat: no-repeat;
			height:800px; */
/* 		}
 */		
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
			height: 100px;
		}
	.fa-solid.fa-heart.fa {
    color: black;
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
		    font-size: 22px;
		    font-weight: 600;
		    color: white;
    		font-family: none;
		}
		card {
		    width: 16%;
		    cursor: pointer;
		    text-align: center;
		    background-color: white;
		    border-radius: 16px;
		    padding: 5px;
		}
		p.para {
		    font-size: 20px;
		    padding: 5px;
		    font-weight: 700;
		    text-align: center;
		}
		.card-section{
			text-align: center;
		}
		
		.extra {
		    width: 183px;
		    border: 2px solid;
		    padding: 26px 0px;
		    position: absolute;
		    top: 81%;
		    left: 16%;
		}
		footer{
		background-color: gray;
		color: white;
	    padding: 21px 0;
	    font-size: 19px;
	    text-align: center;
	}
	.book-content{
		vertical-align: middle;
	    width: 49%;
	    display: inline-block;
	}
	.fa-solid{
		color:white;
	}
	.logo-atag{
		display: inline-block;
		vertical-align: middle;
	}
	.card-details {
	    color: black;
	}
	
	.fa-solid {
	    color: white;
	    padding: 0 5px;
	}
	i.fa-solid.fa-heart.fa:hover {
    transform: scale(1.25);
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
	<!-- <button class="extra">
		<a href="view.jsp" style="text-decoration: none; color: black;">EBook</a>
	</button> -->
	
	<div class="main-container">
		<div class="container-banner">
			<div class="banner-container">
				<img alt="banner" src="images/bannerss.jpg" class="banner-image" style="width: 100%">
			</div>	
		</div>
		<p class="para">EBook</p>
		
		<div class="card-section">
	<a class="iframeLink" href="https://kvinshamlalibrary.wordpress.com/wp-content/uploads/2020/07/tenali-raman-.pdf"> 
		<div class="card">
				<img src="images/tenali raman.webp" alt="Book Cover">
				<div class="card-details">
					<h3>Tenali Raman</h3>
					<p>
						Category:
						Folk Tale
					</p>
				</div> 
				<a href="wishList.jsp" class="wishlist-atag"><i class="fa-solid fa-heart fa"></i></a>
		</div>
	</a>
	
	<a class="iframeLink" href="https://stphilipwestbrook.co.uk/wp-content/uploads/2020/03/Alice-in-Wonderland-Story.pdf"> 
		<div class="card">
				<img src="images/alice-s-adventures-in-wonderland-201.jpg" alt="Book Cover">
				<div class="card-details">
					<h3>Alice In Wonderland</h3>
					<p>
						Category:
						Fantasy
					</p>
				</div> 
			    <a href="wishList.jsp" class="wishlist-atag"><i class="fa-solid fa-heart fa"></i></a>
		</div>
	</a>

	<a class="iframeLink" href="https://schooleverywhere-elquds.com/lib/uploadbook/264021478942782frozen%20read-along%20storybook.pdf"> 
			<div class="card">
					<img src="images/frozen.jpg" alt="Book Cover">
					<div class="card-details">
						<h3>Frozen</h3>
						<p>
							Category:
							Fantasy
						</p>
					</div> 
					<a href="wishList.jsp" class="wishlist-atag"><i class="fa-solid fa-heart fa"></i></a>
			</div>
		</a>
		
			<a class="iframeLink" href="https://lumiere-a.akamaihd.net/v1/documents/jungle_cruise_press_kit_final_lo-res_7-22-21_39de8ff1.pdf"> 
			<div class="card">
					<img src="images/jungle cruise book cover.jpg" alt="Book Cover">
					<div class="card-details">
						<h3>Jungle Cruise</h3>
						<p>
							Category:
							Fiction
						</p>
					</div> 
					<a href="wishList.jsp" class="wishlist-atag"><i class="fa-solid fa-heart fa"></i></a>
			</div>
		</a>
		
		<a class="iframeLink" href="https://cdn.macmillanyounglearners.com/readers-public/Explorers_4_Pinocchio_Chapter_1.pdf"> 
			<div class="card">
					<img src="images/pinocchio.jpg" alt="Book Cover">
					<div class="card-details">
						<h3>Pinocchio</h3>
						<p>
							Category:
							Fantasy
						</p>
					</div> 
				<a href="wishList.jsp" class="wishlist-atag"><i class="fa-solid fa-heart fa"></i></a>
					
			</div>
		</a>
</div>

<p class="para">Comics</p>
	<div class="card-section">
		<a class="iframeLink" href="https://whynotcomicbooks.wordpress.com/wp-content/uploads/2020/06/amazing-fantasy-15.pdf"> 
			<div class="card">
				<img src="images/20_amazing-fantasy-15-artist-jack-kirby-1962-2000-bb46a85587c0417697eef278671e98ff.jpg" alt="Book Cover">
				<div class="card-details">
					<h3> Spider Man </h3>
					<p>
						Category:
						Folk Tale
					</p>
				</div> 
		     	<a href="wishList.jsp" class="wishlist-atag"><i class="fa-solid fa-heart fa"></i></a>	
			</div>
		</a>
		<a class="iframeLink" href="https://www.cdc.gov/ncbddd/actearly/documents/amazing_me_final_version_508.pdf"> 
			<div class="card">
				<img src="images/amazing me.jpg" alt="Book Cover">
				<div class="card-details">
					<h3> Amazing me </h3>
					<p>
						Category:
						Folk Tale
					</p>
				</div> 
			    <a href="wishList.jsp" class="wishlist-atag"><i class="fa-solid fa-heart fa"></i></a>	
			</div>
		</a>

		<a class="iframeLink" href="https://monkeypen.com/blogs/news/hide-and-seek-free-childrens-book-from-monkey-pen"> 
			<div class="card">
				<img src="images/001-HIDE-AND-SEEK-free-childrens-books-1.avif" alt="Book Cover">
				<div class="card-details">
					<h3> Hide And Seek </h3>
					<p>
						Category:
						Folk Tale
					</p>
				</div> 
				<a href="wishList.jsp" class="wishlist-atag"><i class="fa-solid fa-heart fa"></i></a>
			</div>
		</a>
	</div>
	</div>
	</main>
	<footer style="color: white">
 	 &copy;  ReadersRealm.com / All rights reserved
     </footer>

</body>
</html>