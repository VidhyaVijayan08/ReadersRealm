<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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
		
</style>
<body>
<header class="header-container">
		<div class="logo-container">
			<a href="index.html" class="logo-atag"><img src="images/readersrealmlogo.png" alt="Library Logo"class="logo-img" ></a>
		</div>
	
	</header>
	<main>
	<div class="container-banner">
		<div class="banner-container">
			<img alt="banner" src="images/banner2.jpg" class="banner-image" style="width: 100%">
		</div>	
	</div>
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
			</div>
		</a>
</div>

<p>Comics</p>
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
			</div>
		</a>
	</div>
		</main>
			<footer style="color: white">
		 	 	&copy;  ReadersRealm.com / All rights reserved
		     </footer>
	
</body>
</html>