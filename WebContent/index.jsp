<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width">
	<title>Web Design</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	
	<header>
		<div class="container">
			<!-- Logo -->
			<div id="branding">
				<h1><span class="hightlight">Jing</span> Web Design</h1>
			</div>
			<!-- Menu -->
			<nav>
				<ul>
					<li><a href="index.jsp" class="active">Home</a></li>
					<li><a href="index.jsp">About</a></li>
					<li><a href="index.jsp">Skills</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<!-- Banner -->
	<section id="showcase">
		<div class="container">
			<h1 style="color:#fff">Hello</h1>
			<h3 style="color:#fff"><% String id = request.getAttribute("id").toString();
				out.print("Id: " + id);%></h3>
			<p style="color:#fff">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, velit repellendus necessitatibus vel nisi iste reprehenderit illo </p>
		</div>
	</section>

	<!-- Newsletter -->
	<section id="newsletter">
		<div class="container">
			<h1>Subscribe  To Our Newsletter</h1>
			<form>
				<input type="email" name="email" placeholder="Enter email...">
				<button type="submit" class="button_1">Subscribe</button>
			</form>
		</div>
	</section>
	<!-- Boxes -->
	<section id="boxes">
		<div class="container">
			<div class="box">
				<img src="images/html.png">
				<h3>HTML 5</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium tempora consequuntur voluptatem cumque amet fugit sed atque neque.<p>
			</div>
			<div class="box">
				<img src="images/css.png">
				<h3>CSS</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium tempora consequuntur voluptatem cumque amet fugit sed atque neque.<p>
			</div>

			<div class="box">
				<img src="images/html.png">
				<h3>Graphics Design</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium tempora consequuntur voluptatem cumque amet fugit sed atque neque.<p>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer>
		<p><span class="hightlight">Jing</span> Web Design Copyright &Copy: 2019</p>
	</footer>	
	
</body>
</html>