<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ABC University, Ranchi</title>
        <link rel="icon" href="img/logo.png">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <section class="header">
            <nav>
                <a href="index.jsp"><img src="img/logo.png"></a>
                <div class="nav-links" id="navLinks">
                    <i class="fa fa-times" onclick="hideMenu()"></i>
                    <ul>
                        <li><a href="index.jsp">HOME</a></li>
                        <li><a href="about.jsp">ABOUT</a></li>
                        <li><a href="course.jsp">COURSES</a></li>
                        <li><a href="blog.jsp">BLOG</a></li>
                        <li><a href="contact.jsp">CONTACT</a></li>
                        <li><a href="login.jsp">LOGIN</a></li>
                    </ul>
                </div>
                <i class="fa fa-bars" onclick="showMenu()"></i>
            </nav>
            <div class="text-box">
                <h1>ABC University</h1>
                <p>
                    ABC University, Ranchi has been established and incorporated by Jharkhand State Legislature <br>through its official Gazette and recognized as per section 2(f) of UGC Act 1956.
                </p>
                <a href="contact.jsp" class="btn1">Visit us to know more.</a>
            </div>
        </section>

<!----News & Notices -->
<section class="news_section">
    <h1>News & Notices</h1>
    <p>All Undergraduate and Postgraduate Programs are affiliated to 
        <br>ABC University, Ranchi</p>

	<div class="container">
		<div class="row">
			<div class="col-12 col-md-4">
				<div class="news">
					<div class="news1"><h2>News</h2></div>
					<div>
				    <marquee class="news_date" direction="up" scrollamount="2" onmouseover="this.stop()" onmouseout="this.start()">  
          					<ul>
            					<li>
                                    <hr>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src ="img/new.gif"></a></p>
                                    <hr>
            					</li>
            					<li>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                    <hr>
            					</li>
            					<li>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                  <hr>
            					</li>
            					<li>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                  <hr>
            					</li>
            					<li>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                  <hr>
            					</li>
            
          					</ul>
        				</marquee>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-4">
				<div class="news">
					<div class="news1"><h2>Notice</h2></div>
					<div>
                        <marquee class="news_date" direction="up" scrollamount="2" onmouseover="this.stop()" onmouseout="this.start()">
          					<ul>
            					<li>
                                    <hr>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                  <hr>
            					</li>
            					<li>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                    <hr>
            					</li>
            					<li>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                    <hr>
            					</li>
            					<li>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                    <hr>
            					</li>
            					<li>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                    <hr>
            					</li>
            
          					</ul>
        				</marquee>
 					</div>
				</div>
			</div>
			<div class="col-12 col-md-4">
				<div class="news">
					<div class="news1"><h2>Event</h2></div>
					<div>
						<marquee class="news_date" direction="up" scrollamount="2" onmouseover="this.stop()" onmouseout="this.start()">
          					<ul>
            					<li>
                                    <hr>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                  <hr>
            					</li>
            					<li>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                    <hr>
            					</li>
            					<li>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                    <hr>
            					</li>
            					<li>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                    <hr>
            					</li>
            					<li>
                                    <i>01-April-2023 :</i><p><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus...<img src="img/new.gif"></a></p>
                                    <hr>
            					</li>
          					</ul>
        				</marquee>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<!-- ------- COURSE ------- -->


<section class="course">
    <h1>Courses we offer</h1>
    <p>All Undergraduate and Postgraduate Programs are affiliated to 
        <br>ABC University, Ranchi</p>

	<div class="container">
		<div class="row">
			<div class="col-12 col-md-6 col-lg-6">
				<div class="cardd">
                    <h3>Under Graduation Programme</h3>
            <p>Undergraduate education is education conducted after secondary education and prior to postgraduate education. It typically includes all postsecondary programs up to the level of a bachelor's degree. BE in the case of our college.</p>
            <a href="ugcourses.jsp" class="btn1 red-btn">EXPLORE</a> 
                </div>
			</div>
			<div class="col-12 col-md-6 col-lg-6">
				<div class="cardd">
                    <h3>Post Graduation Programme</h3>
                    <p>Postgraduate education involves learning and studying for academic or professional degrees, academic or professional certificates, academic or professional diplomas, or other qualifications for which a first or bachelor's degree generally is required, and it is normally considered to be part of higher education.</p>
                    <a href="#" class="btn1 red-btn">EXPLORE</a>
                </div>
			</div>
            <div class="col-12 col-md-6 col-lg-6">
				<div class="cardd">
                    <h3>Doctoral Programme</h3>
                    <p>PhD is short for Doctor of Philosophy. This is an academic or professional degree that, in most countries, qualifies the degree holder to teach their chosen subject at university level or to work in a specialized position in their chosen field.</p>
                    <a href="#" class="btn1 red-btn">EXPLORE</a>
                </div>
			</div>
            <div class="col-12 col-md-6 col-lg-6">
				<div class="cardd">
                    <h3>Management Technology</h3>
                    <p>This is a full time course offered by the Department of Management Technology with avision of expansion and mobilization of facilities for offering good quality management education and research in the country.
                    To make sure a holistic management education and to assist the graduates develop into modern leaders of the future, the Institute provides possibilities outdoor the lecture rooms as well.</p>
                    <a href="#" class="btn1 red-btn">EXPLORE</a>
                </div>
			</div>
            
		</div>
	</div>
</section>

<!-- ------- CAMPUS --------->

<section  class="campus">
    <h1>Our Campus</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

    <div class="container">
        <div class="row">
            <div class="col-12 col-md-4 col-lg-4 campus-gallery">
                <img src="img/maincampus.jpg">
            <div class="layer">
                <h3>Campus</h3>
            </div>
            </div>
        
            <div class="col-12 col-md-4 col-lg-4 campus-gallery">
                <img src="img/auditorium.jpg">
            <div class="layer">
                <h3>Auditorium</h3>
            </div>
            </div>

            <div class="col-12 col-md-4 col-lg-4 campus-gallery">
                <img src="img/lib.jpg">
            <div class="layer">
                <h3>Library</h3>
            </div>
            </div>

            <div class="col-12 col-md-4 col-lg-4 campus-gallery">
                <img src="img/classroom.jpg">
            <div class="layer">
                <h3>ClassRoom</h3>
            </div>
            </div>

            <div class="col-12 col-md-4 col-lg-4 campus-gallery">
                <img src="img/PlayGround.jpg">
            <div class="layer">
                <h3>Sports</h3>
            </div>
            </div>

            <div class="col-12 col-md-4 col-lg-4 campus-gallery">
                <img src="img/parking.png">
            <div class="layer">
                <h3>Parking</h3>
            </div>
            </div>
        </div>
    </div>
</section>



<!-- -------FACILITIES------- -->

<section class="facilities">
    <h1>Our facilities</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

        <div class="container">
            <div class="row">
                <div class="col-12 col-md-4 col-lg-4 facilities-a">
                    <img src="img/computerlabb.jpeg" alt="">
                    <h3>Computer Lab</h3>
                    <p>The College has high tech computer resource room with more than 50 computers.</p>
                    <br>
                    <a class="btn1 red-btn" href="#">EXPLORE</a>
                </div>
                <div class="col-12 col-md-4 col-lg-4 facilities-a">
                    <img src="img/PLAY.jpeg" alt="">
                    <h3>Barrier Free Playground</h3>
                    <p>The College has well maintained playgrounds for indoor and outdoor activities.</p>
                    <br>
                    <a class="btn1 red-btn" href="#">EXPLORE</a>
                </div>
                <div class="col-12 col-md-4 col-lg-4 facilities-a">
                    <img src="img/medical.jpg" alt="">
                    <h3>Health Care Room</h3>
                    <p>The College has its medical room in case of emergency/first-aid requirement</p>
                    <br>
                    <a class="btn1 red-btn" href="#">EXPLORE</a>
                </div>
                <div class="col-12 col-md-4 col-lg-4 facilities-a">
                    <img src="img/wifii.png" alt="">
                    <h3>Wi-Fi Campus</h3>
                    <p>The College is fully Wi-Fi with high speed internet facility.</p>
                    <br>
                    <a class="btn1 red-btn" href="#">EXPLORE</a>
                </div>
                <div class="col-12 col-md-4 col-lg-4 facilities-a">
                    <img src="img/classroom1.jpg" alt="">
                    <h3>Research Centre</h3>
                    <p>The College has well established research centre where faculty and students work on the research issues related to society and teaching learning.</p>
                    <br>
                    <a class="btn1 red-btn" href="#">EXPLORE</a>
                </div>
                <div class="col-12 col-md-4 col-lg-4 facilities-a">
                    <img src="img/14.jpg" alt="">
                    <h3>Canteen</h3>
                    <p>The College has well organized and hygenic Canteen.</p>
                    <br>
                    <a class="btn1 red-btn" href="#">EXPLORE</a>
                </div>
            </div>
        </div>
</section>


<!-- -------Testimonials----- -->

<section class="testimonials">
    <h1>What our students say</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-6 col-lg-6 ">
                <div class="testimonials-a">
                <img src="img/user1.png" alt="">
            <div>
                <p>
                    Yes,  it is an amazing life in that campus but i could only enjoy 1 year as later pandemic happened.  We have all courses text book as well as other books in our library. Our college is always clean the food in canteen is hygienic too. The area is totally safe and it is 5-7 min walking from the station & college can handle the emergenices too.
                </p>
                <h3>Manish Sharma</h3>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6">
                <div class="testimonials-a">
            <img src="img/user2.jpeg" alt="">
            <div>
                <p>
                    Yes My college has necessary infrastructure and facilities. We have many fans, lights, blackboard, smart board in the classroom. There 3 basketball grounds, one football ground. badminton area, chess room, 3 canteen, library and much more. 
                </p>
                <h3>Ayush Anand</h3>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
            </div>
            </div>
        </div>
        </div>
    </div>
</section>

<!-- --------Gallery -------  -->
<section>
    <div class="galleryBtn" id="gallery-btn" >
        <h1>Campus Gallery</h1>
    <div class="gallerybtn">
        <button class="btn" onclick="one()">1</button>
        <button class="btn active" onclick="two()">2</button>
        <button class="btn" onclick="four()">4</button>
    </div>
        <p>(Click on the buttons to change the grid view.)</p>
    </div>
</section>
<section class="gallery" >
      <!-- Photo Grid -->
      <div class="row"> 
        <div class="column">
          <img src="img/1.jpg" style="width:100%">
          <img src="img/2.jpg" style="width:100%">
          <img src="img/3.jpg" style="width:100%">
          <img src="img/4.jpg" style="width:100%">
          <img src="img/5.jpeg" style="width:100%">
          <img src="img/6.jpeg" style="width:100%">
          <img src="img/7.jpg" style="width:100%">
        </div>
        <div class="column">
            <img src="img/8.jpg" style="width:100%">
            <img src="img/9.jpg" style="width:100%">
            <img src="img/10.jpg" style="width:100%">
            <img src="img/11.jpg" style="width:100%">
            <img src="img/12.jpg" style="width:100%">
            <img src="img/13.jpg" style="width:100%">
        </div>  
        <div class="column">
            <img src="img/14.jpg" style="width:100%">
            <img src="img/15.jpg" style="width:100%">
            <img src="img/16.jpg" style="width:100%">
            <img src="img/17.jpg" style="width:100%">
            <img src="img/18.jpg" style="width:100%">
            <img src="img/19.jpg" style="width:100%">
            <img src="img/20.jpg" style="width:100%">
        </div>
        <div class="column">
            <img src="img/21.jpg" style="width:100%">
            <img src="img/22.jpg" style="width:100%">
            <img src="img/23.jpeg" style="width:100%">
            <img src="img/24.jpeg" style="width:100%">
            <img src="img/25.jpeg" style="width:100%">
            <img src="img/26.jpeg" style="width:100%">
        </div>
      </div>
      
</section>

<!-- --------Contact -------  -->

<section class="contactUs">
    <h1>Enroll for our courses <br>And enquire about Admissions</h1>
    <a href="contact.jsp" class="btn1">CONTACT US</a>
</section>

<!------Placement----->
<section>
	<div class="main-section">
  <div class="container">
    <h4 class="subhead">Top Placement</h4>
    <h2 class="heading">Our Partner Company</h2>
    <marquee class="placement" direction="left" scrollamount="10">
      <img src="img/placement.jpg">
    </marquee>
  </div>
</div>
</section>


<!-- ------- Footer -------  -->

<section class="footer">
    <h4>About us</h4>
    <p>
        ABC University, Ranchi has been established and incorporated by Jharkhand State Legislature <br>through its official Gazette and recognized as per section 2(f) of UGC Act 1956.
    </p>
    <div class="icons">
        <a class="plain-link" href="#"><i class="fa fa-twitter"></i></a>
        <a class="plain-link" href="#"><i class="fa fa-facebook"></i></a>
        <a class="plain-link" href="#"><i class="fa fa-instagram"></i></a>
        <a class="plain-link" href="#"><i class="fa fa-youtube"></i></a>
    </div>
    <p>
        Made by Manish Sharma
        <br>
        Copyright @ 2023
            <a class="plain-link icons-blue" href="#"><i class="fa fa-linkedin"></i></a>
            <a class="plain-link icons-blue" href="#"><i class="fa fa-github"></i></a>
            <a class="plain-link icons-blue" href="#"><i class="fa fa-instagram"></i></a>
            <a class="plain-link icons-blue" href="#"><i class="fa fa-at"></i></a>
    </p>
</section>

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
        <script>
            // Get the elements with class="column"
            var elements = document.getElementsByClassName("column");
            
            // Declare a loop variable
            var i;
            
            // Full-width images
            function one() {
                for (i = 0; i < elements.length; i++) {
                elements[i].style.msFlex = "100%";  // IE10
                elements[i].style.flex = "100%";
              }
            }
            
            // Two images side by side
            function two() {
              for (i = 0; i < elements.length; i++) {
                elements[i].style.msFlex = "50%";  // IE10
                elements[i].style.flex = "50%";
              }
            }
            
            // Four images side by side
            function four() {
              for (i = 0; i < elements.length; i++) {
                elements[i].style.msFlex = "25%";  // IE10
                elements[i].style.flex = "25%";
              }
            }
            
            // Add active class to the current button (highlight it)
            var galleryBtn = document.getElementById("gallery-btn");
            var btns = a.getElementsByClassName("btn");
            for (var i = 0; i < btns.length; i++) {
              btns[i].addEventListener("click", function() {
                var current = document.getElementsByClassName("active");
                current[0].className = current[0].className.replace(" active", "");
                this.className += " active";
              });
            }
            </script>
            
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    </body>
</html>