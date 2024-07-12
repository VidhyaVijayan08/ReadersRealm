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
	
	.card-details {
	    color: black;
	}
	
	.card {
	    background-color: white;
	}
	
	.fa-solid {
	    color: white;
	    padding: 0 5px;
	}
	i.fa-solid.fa-heart.fa:hover {
    transform: scale(1.25);
}

		.books-image {
		    width: 49%;
		    vertical-align: middle;
		    display: inline-block;
		}
		
		.image-book {
		    width: 100%;
		    border-radius: 34px;
		}
		
		.books-content{
			width: 45%;
			display: inline-block;
			vertical-align: middle;
		}
		
		.books-container {
		    width: 90%;
		    margin: 0 auto;
		    padding: 50px 0px;
		}
		.books-image {
		    width: 54%;
		    vertical-align: middle;
		    display: inline-block;
		}
		
		.expert-curated-container{
			width: 90%;
		    margin: 0 auto;
		}
		
		.expert-curated-content {
		    width: 44%;
		    vertical-align: middle;
		    display: inline-block;
		}
		
		.expert-curated-image {
		    vertical-align: middle;
		    width: 50%;
		    display: inline-block;
		}
		
		.hand-picked-selection-heading {
		    text-align: center;
		    font-size: 30px;
		    margin: 0px;
		    line-height: 57px;
		}
		
		.expert-curated-para {
		    font-size: 26px;
		    font-weight: 800;
		    line-height: 20px;
		    margin: 0px;
		}
		
		.expert-curated-paras {
    font-size: 21px;
}
		
		.oxford-university-press {
		    width: 90%;
		    margin: 0 auto;
		    padding: 50px 0px;
		}
		
		.books-para {
		    font-size: 21px;
		    width: 58%;
		    margin: 0 auto;
		}
		
		.hand-picked-selection {
		    padding: 10px 0px;
		}
		.oxford-university-press-image {
		    width: 48%;
		    display: inline-block;
		    vertical-align: middle;
		}
		
		.oxford-university-press-content {
		    display: inline-block;
		    width: 39%;
		    vertical-align: middle;
		    padding: 70px;
		}
		h3.oxford-university-press-heading {
		    font-size: 32px;
		    margin: 0px;
		    line-height: 38px;
		}
		.oxford-university-press-content-paras{
			font-size: 20px;
		}
		
		.arcturus-publishing-limited-content{
			display: inline-block;
			vertical-align: middle;
			width: 50%;
		}
		
		.arcturus-publishing-limited-images{
			display: inline-block;
			vertical-align: middle;
			width: 49%;
		}
		.arcturus-publishing-images{
			width: 100%;
		}
		.arcturus-publishing-limited-heading{
			font-size: 32px;
		    margin: 0px;
		    line-height: 38px;
		}
		.arcturus-publishing-limited-para{
			font-size: 20px;
		}
		
		.arcturus-publishing-limited{
			width: 90%;
			margin: 0 auto;
		}
		
		.dashboard-container {
		    background-color: #333;
		    color: white;
		    padding: 10px;
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		}

		.logo-container {
		    flex: 1;
		}
		
		img.cricket-images {
		    width: 100%;
		}
		.cricket-image {
		    display: inline-block;
		    width: 49%;
		    vertical-align: middle;
		}
		.cricket {
		    width: 90%;
		    margin: 0 auto;
		    padding: 50px 0px;
		}
		
		.cricket-content{
			display: inline-block;
		    width: 39%;
		    vertical-align: middle;
		    padding: 65px;
		}
		
		.cricket-content-heading{
			font-size: 32px;
		    margin: 0px;
		    line-height: 38px;
		}
		
		.logo-atag{
			text-decoration: none;
		}
		
		p.books {
		    font-size: 40px;
		    font-weight: 800;
		    text-align: center;
		    margin: 0px;
		    padding: 39px 0;
		}
		
	.dropdown {
	  position: relative;
	  display: inline-block;
	}
	
	.dropbtn {
	color: white;
	    padding: 10px;
	    font-size: 22px;
	    border: none;
	    cursor: pointer;
	}
	
	.dropdown-content {
	  display: none;
	  position: absolute;
	  background-color: #f9f9f9;
	  min-width: 144px;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	}
	
	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	}
	
	.dropdown-content a:hover {background-color: #f1f1f1}
	
	.dropdown:hover .dropdown-content {
	  display: block;
	}
	
	.dropdown-content a.active {
	  background-color: #4CAF50;
	  color: white;
	}	

	</style>
</head>
<body>
<header class="header-container">
		<div class="logo-container">
		<a href="index.html" class="logo-atag"><img src="images/readersrealmlogo.png" alt="Library Logo"class="logo-img" ></a>
		</div>
	
		<nav class="nav" style="display:inline-block;">
			<a href="retrieve" class="wishlist-atag"><i class="fa-solid fa-heart"></i></a>
		<a href="" class="logo-atag"> <i class="fa-solid fa-user"></i> </a>
			<ul class="nav-ul">
				<li class="nav-ul-li"><a href="library.jsp" style="text-decoration: none; color: white;">Card</a></li>
				<li class="nav-ul-li"><a href="view.jsp" style="text-decoration: none; color: white;">EBook</a></li>
				<div class="dropdown">
  <button class="dropbtn">Menu</button>
  <div class="dropdown-content">
    <a href="books">Books</a>
    <a href="showUserRequestForm">Requested Books</a>
    <a href="ourBooks.jsp">Our Book</a>
  </div>
</div>
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
	<form action="retrieveWish" method="post">
	<input type="hidden" name="bookId" value="">
			<i class="fa-solid fa-heart fa"></i>
</form>
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
					<form action="retrieveWish" method="post">
						<button>
							<i class="fa-solid fa-heart fa" style="color:black"></i>
						</button>
					</form>
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
	<p class="books"> Our Books </p>
	
	<div class="books-container">
		<div class="books-content">
			<h1 class="book-heading">Books Kids Love, Easily Accessible</h1>
			<p class="books-para">Discover 2,500+ engaging children's books from top publishers like Oxford University Press, Arctures, Cricket and more. Explore a wide range of stories, categories, and quizzes that inspire children to read and learn. Spanning 8 reading levels, theres's a perfect book for every child!</p>
		</div>
		<div class="books-image">
			<img alt="books" src="images/ourbooks1.webp" class="image-book">
		</div>
	</div>
	
	<div class="hand-picked-selection">
		<h2 class="hand-picked-selection-heading">A Hand-Picked Selection</h2>
		<div class="expert-curated-container">
			<div class="expert-curated-content">
				<p class="expert-curated-para">An Expert-Curated Library</p>
				<p class="expert-curated-paras">Our editors track down and create brilliant books to ensure all our library categories offer top-quality reads for every child - whether they want to be whisked away on an adventure, love sports & hobbies, want to explore their health & wellbeing or have dreams of making the next breakthrough in science & technology.</p>
		   </div>
		   <div class="expert-curated-image">
		   	<img alt="expert-curated library" src="images/ourbooks2.webp" class="image-book">
		   </div>
		</div>
		
		<div class="oxford-university-press">
			<div class="oxford-university-press-image">
				<img alt="books-oxford" src="images/ourbooks3.webp" class="image-book">
			</div>
			<div class="oxford-university-press-content">
			<h3 class="oxford-university-press-heading">Oxford University Press</h3>
				<p class="oxford-university-press-content-paras">We have a vast collection of picture books from the well-known publisher Oxford University Press. These books are not only engaging for children and visually striking, but also cover topics like sustainability, friendship, imagination and humour. Highlights include Lubna and the Pebble and the Christopher Nibbles series.</p>	
			</div>
		</div>
		
		<div class="arcturus-publishing-limited">
			<div class="arcturus-publishing-limited-content">
				<h4 class="arcturus-publishing-limited-heading">Arcturus Publishing Limited</h4>
				<p class="arcturus-publishing-limited-para">Books from one of the UK's leading independent publishers, Arcturus are visually engaging and cover a vast range of books from comics, graphical novels and adventure stories that appeal to every child. Highlights include the <b>Twisted FairyTale</b> series and <b>The Little Prince.</b></p>
			</div>
			<div class="arcturus-publishing-limited-images">
				<img alt="arcturus" src="images/ourbooks5.webp" class="arcturus-publishing-images">
			</div>
		</div>
		
		<div class="cricket">
			<div class="cricket-image">
				<img alt="cricket" src="images/ourbooks6.webp" class="cricket-images">
			</div>
			<div class="cricket-content">
				<h5 class="cricket-content-heading">Cricket</h5>
				<p class="cricket-content-para">Our selection of Cricket titles include poetry, plays, traditional tales, global cultures and diversity. The Click and Jane series introduces simple science to the reader as they discover the world around them.</p>
			</div>
		</div>
	</div>
	</main>
	<footer style="color: white">
 	 	&copy;  ReadersRealm.com / All rights reserved
    </footer>
</body>
</html>