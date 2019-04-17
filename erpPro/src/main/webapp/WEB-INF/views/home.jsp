<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

     <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
 
   <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/homeerpcs.css"/>"/>
   
 <title>ERP Home</title>
  </head>
	<body>
	
	
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight">
			<h1 id="colorlib-logo"><a href="index.html"><b>EMS</b></a></h1>
		 <nav id="colorlib-main-menu" role="navigation">
			<ul>
				<li class="colorlib-active">
				<li><a>HOME</a></li>
				<li><a>ABOUT</a></li>
				<li><a>SERVICES</a></li>
				<li><a>INDUSTRIES</a></li>
				<li><a>CONTACT</a></li>
				<li><a href="user/loginForm">Employee Login</a></li>
				<li><a href="admin/adminlogin">Admin Login</a></li>
			
			</ul>
		</nav> 
	</aside>

		<div id="colorlib-main">
			<aside id="colorlib-hero" class="js-fullheight">
			 <div class="container-fluid">

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
              </ol>
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block w-100" src="<c:url value="/resources/images/img_bg_1.jpg"/>"/>
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src="<c:url value="/resources/images/img_bg_2.jpg"/> "/>
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100"src="<c:url value="/resources/images/img_bg_3.jpg"/> "/>
                </div>
                
              </div>
              <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
			</div>	
			</aside>

			<div class="colorlib-about">
				<div class="colorlib-narrow-content">
					<div class="row">
		<div class="col-md-6">
		<div class="about-img animate-box">
		<img class="asidePic" src="<c:url value="/resources/images/pic.jpg"/> "> 
		</div>
		</div>
<div class="col-md-6 animate-box">
	<div class="about-desc">
		<h2 class="colorlib-heading">Who we are</h2>
<p>An information technology provider with customers in travel and transportation,
 banking and financial services, insurance, manufacturing and media verticals. It offers services including 
 application development and maintenance, infrastructure management, and business process management. a leading global
  IT services, consulting and business solutions organization. The company offers a range of IT services, outsourcing and
   business solutions. They also offer IT infrastructure services, business process outsourcing services, engineering and 
   industrial services, global consulting and asset leveraged solutions. Their segments include banking, financial services 
   and insurance; manufacturing; retail and distribution, and telecom. The company is a part of Tata Group, one of India's 
   most respected business conglomerates and most respected brands. They are headquartered in Mumbai. They are having 142
    offices in 42 countries as well as 105 delivery centers in 20 countries. The company shares are listed on the National 
    Stock Exchange and Bombay Stock Exchange of India.Tata Consultancy Services Ltd was incorporated in the year 1968. Tata 
    Sons Ltd established the company as division to service their electronic data processing (EDP) requirements and provide
     management consulting services. In the year 1971, they started their first international assignment. </p>
		</div>
		</div>
	</div>
	</div>
	</div>
	
	<center>
	<div class="colorlib-blog">
		<div class="colorlib-narrow-content">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
					
			<h2 class="colorlib-heading">Knowledge Center</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-sm-6 animate-box" >
			<div class="blog-entry">
				<a class="blog-img"><img class="img-responsive" src="<c:url value="/resources/images/img_bg_16.jpg"/> "/> </a>
				<div class="desc">
					
					<h3><a>School</a></h3>
					<p>Nguru offers technology based 360° learning and school support solutions
					 for K-12 segment with an aim to make learning co-incidental rather than the
					  conventional.</p>
				</div>
			</div>
		</div>
	<div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
				<div class="blog-entry">
					<a class="blog-img"><img class="img-responsive" src="<c:url value="/resources/images/img_bg_17.jpg"/> "/></a>
					<div class="desc">
					
				<h3><a>Enterprises</a></h3>
				<p> is a market-leading learning outsourcing company that provides managed training 
				services including custom content development and curriculum design, learning 
				administration, learning delivery, strategic sourcing, and learning technology.</p>
			</div>
		</div>
	</div>
	<div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
		<div class="blog-entry">
			<a class="blog-img"><img class="img-responsive" src="<c:url value="/resources/images/img_bg_18.jfif"/> "/></a>
			<div class="desc">
				
				<h3><a>Work @ EMS</a></h3>
				<p>Be a part of the global mushroom workforce. Connect with us to explore open
				 opportunities and job alerts relevant to you.</p>
			</div>
				</div>
			</div>
		</div>
			</div>
		</div>
		</div>
	</div>
	</center>
	<center>
		 <div class="foot">
   <p id="ftext">@ 2019-EMS All rights reserved</p>
   </div>
	</center>

	 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>

</body>
</html>