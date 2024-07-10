<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Use The Library</title>
<style type="text/css">
		.nav-ul-li-atag {
		    display: inline-block;
		    list-style: none;
		    padding: 0px 11px;
		    font-size: 24px;
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
		    font-family: none;
		    font-size: 23px;
		    font-weight: 600;
		}
		body {
			margin: 0px;
		}
		
		.image-sections {
			display: inline-block;
			width: 43%;
		}
		
		.nav-ul-li {
		    list-style: none;
		    font-size: 24px;
		    padding: 31px;
		    display: inline-block;
		    font-weight: 800;
		}
		
		ul {
			margin: 0px;
			padding: 0px;
		}
		
		.physical-card-image {
			width: 100%;
		}
		
		.image-section {
			width: 47%;
			display: inline-block;
			vertical-align: top;
		}
		
		.card-para-block {
			width: 48%;
			display: inline-block;
			margin-left: 41px;
		}
		
		.content {
			width: 51%;
			display: inline-block;
			vertical-align: top;
			font-size: 20px;
			margin-left: 43px;
			line-height: 33px;
		}
		
		.nav {
			width: 90%;
			margin: 0 auto;
		}
		
		.library-card-span {
			font-weight: 800;
		}
		
		#contain-section {
			background-color: black;
			color: white;
			padding: 30px 0px;
		}
		
		.container-section {
			width: 90%;
			margin: 0 auto;
			padding: 5px;
		}
		
		.section-container {
			width: 75%;
			margin: 0 auto;
			padding: 10px 0px;
		}
		
		.li-atag {
			color: white;
		}
		
		.digital-card {
			width: 100%;
		}
		
		#container {
			background-color: antiquewhite;
			padding: 5px;
		}
		
		* {
			box-sizing: border-box;
		}
		
		.accordion-item {
			border-bottom: 1px solid #ccc;
		}
		
		.accordion-title {
			display: flex;
			justify-content: space-between;
			align-items: center;
			padding: 24px;
			cursor: pointer;
		}
		
		.accordion-title h2 {
			margin: 0;
		}
		
		.accordion-btn {
			background: none;
			color: white;
			border: none;
			cursor: pointer;
			font-size: 20px;
			line-height: 1;
		}
		
		.accordion-btns {
			background: none;
			color: black;
			border: none;
			cursor: pointer;
			font-size: 20px;
			line-height: 1;
		}
		
		.accordion-content {
			padding: 10px;
			display: none; /* Hide content by default */
		}
		
		.active {
			display: block; /* Show content when active */
		}
		
		.digital-button {
			padding: 11px 20px;
			background-color: black;
			color: white;
			font-size: 17px;
			font-weight: 800;
		}
		
		.paras {
			font-size: 21px;
			margin: 0px;
			padding: 21px 0px;
		}
		
		.para {
			margin: 0px;
		}
		
		.heading {
			margin: 0px;
		}
		
		.temporary-card {
			display: inline-block;
			width: 49%;
			vertical-align: top;
		}
		
		.accordion-item {
			display: inline-block;
			    width: 100%;
		}
		
		.items {
			width: 50%;
			display: inline-block;
			border-bottom: 1px solid #ccc;
			
		}
		
		#replace-card{
			background-color: lightgray;
		    padding: 10px 0px;
		}
		
		#temporary-card-section {
			padding: 45px 0px;
			width: 75%;
			margin: 0 auto;
		}
		
		p.temporary-card-para {
			font-size: 20px;
			margin: 0px;
			padding: 15px 0px;
			line-height: 31px;
		}
		
		.temporary-card-heading {
			font-size: 32px;
			margin: 0px;
		}
		
		.replace-card-heading {
			font-size: 33px;
			margin: 0px;
			padding: 8px 0px;
		}
		
		.replace-card-para {
			font-size: 18px;
			margin: 0px;
			padding: 8px 0px;
		}
		
		.replace-card-section {
			width: 75%;
			margin: 0 auto;
		}
		.nav-atag-li{
			text-decoration: none;
			color: black;
		}
</style>
</head>
<body>


<header class="header-container">
		<div class="logo-container">
		<a href="index.html" class="logo-atag"><img src="logo.jpg" alt="Library Logo "class="logo-img" ></a>
		</div>
		<h1 style="text-align:center; display:inline-block; width: 39%;  padding: 0px 91px;">Library Application</h1>
		<nav class="navs" style="display:inline-block;">
			<ul class="nav-ul">
			<li class="nav-ul-li">
			 <a href="view.html" style="text-decoration: none; color: black;">EBook</a>								
			</li>
				<li class="nav-ul-li-atag"><a href="viewBookCategory.jsp" style="text-decoration:none; color:black">Books</a></li>
				<li class="nav-ul-li-atag"><a href="about.html" style="text-decoration:none; color:black">About Us</a></li>
  				<li class="nav-ul-li-atag"><form action="LogoutServlet" method="post"><button>Logout</button></form></li>		
			</ul> 
		</nav>
	</header>


<main>
	<div class="containers">
		<nav class="nav">
			<ul>
				<li class="nav-ul-li">
					<a href="#contain-section" class="nav-atag-li">Physical Card</a>
				</li>
				<li class="nav-ul-li">
					<a href="#container" class="nav-atag-li">Digital Card</a>
				</li>
				<li class="nav-ul-li">
					<a href="#temporary-card-section" class="nav-atag-li">Temporary Card</a>
				</li>
				<li class="nav-ul-li">
					<a href="#replace-card" class="nav-atag-li">Replace Card</a>
				</li>
				<li class="nav-ul-li">
					<a href="#" class="nav-atag-li">Borrowing Policies</a>
				</li>
			</ul>
		</nav>
		<div id="contain-section">
			<div class="container-section">
				<h2 class="heading">Get a Physical Library Card</h1>
				<p class="paras" style="font-size: 21px;">Getting a library card
					is free, simple and quick. Sign up today and begin taking advantage
					of our resources.</p>

				<div class="containers">
					<div class="image-section">
						<img alt="physical card" src="images/images1.jpg"
							class="physical-card-image">
					</div>
					<div class="card-para-block">
						<h1 class="library-card-para">How do I get a Library Card?</h1>
						<div class="accordion">
							<div class="accordion-item">
								<div class="accordion-title">
									<h2>Step 1. Bring a photo ID and proof of current address</h2>
									<button class="accordion-btn">+</button>
								</div>
								<div class="accordion-content">
									<p>
									<ul class="library-card-ul">
										<li class="library-card-li"><span
											class="library-card-span">Photo Identification: </span> We
											accept the following forms of identification: California
											Driver's License, California ID, Military ID, passport and
											Matricula Consular. For additional forms of acceptable
											identification, please contact library staff.</li>
										<li class="library-card-li"><span
											class="library-card-span">Proof of Home Address: </span> We
											accept the following as proof of your current address:
											California Driver's License, California ID or utility bill.
											For additional forms of acceptable proof of address. please
											contact library staff.</li>
									</ul>
									<p>If you are under the age of 18, a parent or guardian
										with an acceptable form of identification and proof of
										address, must be present at sign up.</p>
									</p>
								</div>
							</div>

							<div class="accordion-item">
								<div class="accordion-title">
									<h2>Step 2. Complete the Application</h2>
									<button class="accordion-btn">+</button>
								</div>
								<div class="accordion-content">
									<p>We have applications on-hand at the library, but if
										you'd like to fill one out ahead of time, here are our
										applications in English and Spanish:</p>
									<ul>
										<li><a
											href="https://static1.squarespace.com/static/624dd5883b5a4c2baeea5c27/t/62bca7ed575c1d5039eb8a31/1656530925979/Library%2Bcard%2Bapplication%2BRev%2B5.22.18.pdf"
											class="li-atag">Downey City Library Card Application(PDF)
												English</a></li>
										<li><a
											href="https://static1.squarespace.com/static/624dd5883b5a4c2baeea5c27/t/62bca818406220325f7be8aa/1656530968547/Revised%2Blibrary%2Bcard%2BSPANISH.pdf"
											class="li-atag">Downey City Library Card Application(PDF)
												Spanish</a></li>
									</ul>
									<p class="library-card-para">Step 3. Submit your
										Application, get your card & begin exploring our collections</p>
									<p>Start browsing our collection in person or online!</p>
								</div>
							</div>

							<div class="accordion-item">
								<div class="accordion-title">
									<h2>Step 3. Submit your Application, get your card & begin
										exploring our collections</h2>
									<button class="accordion-btn">+</button>
								</div>
								<div class="accordion-content">
									<p>Start browsing our collection in person or online!</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="container">
		<div class="section-container">
			<h2>Get a Digital Library Card</h2>
			<div class="image-sections">
				<img alt="Digital Card" src="images/images2.jpg"
					class="digital-card">
			</div>
			<div class="content">
				<p class="para">Sign up online for our Digital Library Card to
					enjoy access to our online collection of books, newspapers,
					magazines, streaming movies and more.</p>
				<p class="para">Here are just a few things you can do with your
					Digital Library Card.</p>
				<ul class="para-ul">
					<li class="para-ul-li">Read eBooks</li>
					<li class="para-ul-li">Listen to audiobooks</li>
					<li class="para-ul-li">Access your favorite magazines</li>
					<li class="para-ul-li">Learn Languages</li>
					<li class="para-ul-li">Work with live online tutors</li>
					<li class="para-ul-li">Access our entire collection of
						databases and online resources.</li>
				</ul>
				<button class="digital-button">Get a Digital Card</button>
			</div>
		</div>
	</div>
	<div id="temporary-card-section">
		<div class="temporary-card">
			<h3 class="temporary-card-heading">Get a Temporary Card</h3>
			<p class="temporary-card-para">The library offers temporary cards
				for in-person visitors to the library.</p>
		</div>
		<div class="accordion-item items">
			<div class="accordion-title">
				<h2>Guest Card</h2>
				<button class="accordion-btns">+</button>
			</div>
			<div class="accordion-content">
				<p>This card is meant for adult visitors who are unable to
					provide proof of identity and/ or a California home address. This
					is ideal for:</p>
				<ul>
					<li>Visitors from out-of-state or abroad with a valid photo ID</li>
					<li>Visitors with a valid photo ID but no proof of current
						home address in the State of California.</li>
					<li>Visitors with an expired photo ID</li>
					<li>Visitors with no photo ID</li>
				</ul>
				<p>Guest cards expire after a 3 month period, but can be renewed
					for additional 3 month periods or upgraded to a traditional card
					once a proof of California residency is provided in person, With
					this card, you can:</p>
				<ul>
					<li>Borrow and place request for all print material (books,
						pamphlets, etc)</li>
					<li>Access online services, digital books, and databases</li>
					<li>Use public computers</li>
					<li>Reserve and use our rooms</li>
				</ul>
				</p>
			</div>
		</div>

	</div>

	<div id="replace-card">
		<div class="replace-card-section">
			<h4 class="replace-card-heading">Replace Your Card</h4>
			<p class="replace-card-para">
				To report a Lost or Damaged library card, call <a>(562)904-7366.</a>
			</p>
			<p class="replace-card-para">To replace your card, you'll have to
				visit the library and present a valid photo ID. There is a $1.00 fee
				to replace your library card.</p>
		</div>
	</div>
	</main>

	<script>
    document.addEventListener('DOMContentLoaded', function() {
        const accordionItems = document.querySelectorAll('.accordion-item');

        accordionItems.forEach(item => {
            const title = item.querySelector('.accordion-title');
            const content = item.querySelector('.accordion-content');
            const btn = title.querySelector('.accordion-btn');

            title.addEventListener('click', () => {
                content.classList.toggle('active');
                btn.textContent = content.classList.contains('active') ? '-' : '+';
            });
        });
    });
</script>


</body>
</html>