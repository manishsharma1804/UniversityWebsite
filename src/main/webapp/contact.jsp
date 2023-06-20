<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ABC University, Ranchi</title>
    <link rel="icon" href="img/logo.png" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/style.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <section class="sub-header sub-header-image-4">
      <nav>
        <a href="index.jsp"><img src="img/logo.png" /></a>
        <div class="nav-links" id="navLinks">
          <i class="fa fa-times" onclick="hideMenu()"></i>
          <ul>
            <li><a href="index.jsp">HOME</a></li>
            <li><a href="about.jsp">ABOUT</a></li>
            <li><a href="course.jsp">COURSES</a></li>
            <li><a href="blog.jsp">BLOG</a></li>
            <li><a href="contact.jsp">CONTACT</a></li>
            <li><a href="adminlogin.jsp">LOGIN</a></li>
          </ul>
        </div>
        <i class="fa fa-bars" onclick="showMenu()"></i>
      </nav>
      <h1>Contact Us</h1>
    </section>

    <!-- --------Contact us content-------- -->

    <section class="location">
      <h1>Our Location</h1>
      <div class="map">
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3659.2194718874184!2d85.40573467530227!3d23.488603098776583!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f4e56e251b18cb%3A0x339bed45fe3339c8!2sSai%20Nath%20University!5e0!3m2!1sen!2sin!4v1685636864974!5m2!1sen!2sin"
          width="600"
          height="450"
          style="border: 0"
          allowfullscreen=""
          loading="lazy"
          referrerpolicy="no-referrer-when-downgrade"
        ></iframe>
      </div>
    </section>

    <!-- ------- Footer -------  -->

    <footer class="footer">
  	 <div class="container">
  	 	<div class="row roww">
  	 		<div class="footer-col">
  	 			<h4>Useful Links</h4>
  	 			<ul>
  	 				<li><a href="index.jsp">home</a></li>
  	 				<li><a href="about.jsp">About</a></li>
  	 				<li><a href="course.jsp">Courses</a></li>
  	 				<li><a href="blog.jsp">Blog</a></li>
  	 				<li><a href="contact.jsp">Contact</a></li>
  	 				<li><a href="adminlogin.jsp">Login</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>Other Links</h4>
  	 			<ul>
  	 				<li><a href="#">Admission Form</a></li>
  	 				<li><a href="#">Fee Structure</a></li>
  	 				<li><a href="#">Alumni/Placement</a></li>
  	 				<li><a href="#">Faculty & Staff</a></li>
  	 				<li><a href="#">Vision & Mission</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
    			<h4>Contact</h4>
   				 <ul>
        			<li><a href="#"><i class="fa fa-phone"></i> Phone: +1 123-456-7890</a></li>
        			<li><a href="#"><i class="fa fa-envelope"></i> Email: info@example.com</a></li>
        			<li><a href="#"><i class="fa fa-map-marker"></i> Location:Ranchi, Jharkhand, India</a></li>
    			</ul>
			</div>

  	 		<div class="footer-col">
  	 			<h4>follow us</h4>
  	 			<div class="social-links">
  	 				<a href="#"><i class="fab fa-facebook-f"></i></a>
  	 				<a href="#"><i class="fab fa-twitter"></i></a>
  	 				<a href="#"><i class="fab fa-instagram"></i></a>
  	 				<a href="#"><i class="fab fa-linkedin-in"></i></a>
  	 			</div>
  	 		</div>
  	 	</div>
  	 	<p class="copyright">Copyright 2023 - <a href="#">ABC  University</a> - All Rights Reserved </p>
  	 </div>
  </footer>

    <!-- -------------JavaScript for Nav Bar------------ -->
    <script>
      var navLinks = document.getElementById("navLinks");
      function showMenu(){
          navLinks.style.right = "0";
      }
      function hideMenu(){
          navLinks.style.right = "-200px";
      }
    </script>
    <script
      src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
