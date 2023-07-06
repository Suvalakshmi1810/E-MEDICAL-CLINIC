<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>MEDICLINIC</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">  

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>
<style>
    body{
        background: whitesmoke;
    }
      @keyframes slideInLeft {
        0% {
          transform: translateX(-100%);
        }
        100% {
          transform: translateX(0);
        }
      }
      header {
        animation: 1s ease-out 0s 1 slideInLeft;
       
      }
</style>
<body>
    <!-- Topbar Start -->
    <div class="container-fluid py-2 border-bottom d-none d-lg-block">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-lg-start mb-2 mb-lg-0">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-decoration-none text-body pe-3" href=""><i class="bi bi-telephone me-2"></i>9876543210</a>
                        <span class="text-body">|</span>
                        <a class="text-decoration-none text-body px-3" href=""><i class="bi bi-envelope me-2"></i>suvalakshmi.r@pec.edu</a>
                    </div>
                </div>
                <div class="col-md-6 text-center text-lg-end">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-body px-2" href="">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="text-body px-2" href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="text-body px-2" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a class="text-body px-2" href="">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a class="text-body ps-2" href="">
                            <i class="fab fa-youtube"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <header>
    <div class="container-fluid sticky-top bg-white shadow-sm">
        <div class="container">
            <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0">
                <a href="index.html" class="navbar-brand">
                    <h1 class="m-0 text-uppercase text-primary"><i class="fa fa-clinic-medical me-2"></i>RLHS CLINIC</h1>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="index.html" class="nav-item nav-link active">Home</a>
                        <!-- <a href="about.html" class="nav-item nav-link">About</a> -->
                        <a href="http://localhost:8080/Wt_pro/service_display.html" class="nav-item nav-link">Service</a>
                     
                        <a href="http://localhost:8080/Wt_pro/cart.jsp" class="nav-item nav-link">Shopping</a>
                        <a href="http://localhost/reviews/reviews.php" class="nav-item nav-link">Reviews</a>
                       
                       
                        <!-- <a href="contact.html" class="nav-item nav-link">Contact</a> -->
                        <a href="http://localhost/ajaxfolder/bot.php" class="nav-item nav-link">Queries</a>
                          <a href="http://localhost:8080/Wt_pro/youtube.html" class="nav-item nav-link">Tips</a>
                           <a href="http://127.0.0.1:5500/mail.html" class="nav-item nav-link">Contact Us</a>
                              <a href="http://localhost:8080/Wt_pro/session.jsp" class="nav-item nav-link">Log Out</a>
                         <!-- <a href="http://localhost:8080/Wt_pro/login.jsp" class="btn btn-light rounded-pill py-md-3 px-md-5 mx-2" style="height: 50px; margin-top: 20px;">Login</a>
                        <a href="http://localhost:8080/Wt_pro/login.jsp" class="btn btn-light rounded-pill py-md-3 px-md-5 mx-2" style="height: 50px; margin-top: 20px;">Appointment</a> -->
                    </div>
                </div>
            </nav>
        </div>
    </div>
    </header>
    <!-- Navbar End -->


    <!-- Hero Start -->
    <header>
    <div class="container-fluid bg-primary py-5 mb-5 hero-header" style="height: 100vh;">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h4 class="d-inline-block text-black text-uppercase ">Welcome To Mediclinic</h4>
                    <h1 class="display-1 text-black mb-md-4">Best Healthcare Diagnosis In The City</h1>
                    <div class="pt-2">
                        <a href="http://localhost:8080/Wt_pro/login.jsp" class="btn btn-outline-light rounded-pill  py-md-3 px-md-5 mx-2" style="border-radius: 15px;
                        background: rgba(251, 251, 253, 0.652);
                        box-shadow: 0 8px 32px 0 rgb(0, 0, 0);
                        backdrop-filter: blur(8.5px);
                        -webkit-backdrop-filter: blur(8.5px);
                        border-radius: 10px;
                        border: 1px solid rgba(255, 255, 255, 0.18);color: rgb(5, 5, 63);">Login</a>
                        <a href="http://localhost:8080/Wt_pro/apoint.jsp" class="btn btn-outline-light rounded-pill py-md-3 px-md-5 mx-2" style="border-radius: 15px;
                        background: rgba(251, 251, 253, 0.652);
                        box-shadow: 0 8px 32px 0 rgb(0, 0, 0);
                        backdrop-filter: blur(8.5px);
                        -webkit-backdrop-filter: blur(8.5px);
                        border-radius: 10px;
                        border: 1px solid rgba(255, 255, 255, 0.18);color: rgb(5, 5, 63);">Appointment</a>
                         <a href="http://localhost:8080/Wt_pro/registerpage.html" class="btn btn-outline-light rounded-pill py-md-3 px-md-5 mx-2" style="border-radius: 15px;
                        background: rgba(251, 251, 253, 0.652);
                        box-shadow: 0 8px 32px 0 rgb(0, 0, 0);
                        backdrop-filter: blur(8.5px);
                        -webkit-backdrop-filter: blur(8.5px);
                        border-radius: 10px;
                        border: 1px solid rgba(255, 255, 255, 0.18);color: rgb(5, 5, 63);">Register</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </header>
    <!-- Hero End -->


    <!-- About Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="row gx-5">
                <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100 rounded" src="img/about.jpg" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="mb-4">
                        <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">About Us</h5>
                        <h1 class="display-4">Get access to specialty tests</h1>
                    </div>
                    <p>
                        Every day, we're helping healthcare providers treat millions of patients as individuals. From specialty diagnostics to the cutting-edge science behind COVID-19, oncology, chronic diseases and more—we’ll never stop delivering better, smarter resources.</p>
                    <div class="row g-3 pt-3">
                        <div class="col-sm-3 col-6">
                            <div class="bg-light text-center rounded-circle py-4">
                                <i class="fa fa-3x fa-user-md text-primary mb-3"></i>
                                <h6 class="mb-0">Qualified<small class="d-block text-primary">Staffs</small></h6>
                            </div>
                        </div>
                        <div class="col-sm-3 col-6">
                            <div class="bg-light text-center rounded-circle py-4">
                                <i class="fa fa-3x fa-procedures text-primary mb-3"></i>
                                <h6 class="mb-0">Emergency<small class="d-block text-primary">Services</small></h6>
                            </div>
                        </div>
                        <div class="col-sm-3 col-6">
                            <div class="bg-light text-center rounded-circle py-4">
                                <i class="fa fa-3x fa-microscope text-primary mb-3"></i>
                                <h6 class="mb-0">Accurate<small class="d-block text-primary">Testing</small></h6>
                            </div>
                        </div>
                        <div class="col-sm-3 col-6">
                            <div class="bg-light text-center rounded-circle py-4">
                                <i class="fa fa-3x fa-ambulance text-primary mb-3"></i>
                                <h6 class="mb-0">Free<small class="d-block text-primary">Ambulance</small></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->
    

    <!-- Services Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Services</h5>
                <h1 class="display-4">Excellent Medical Services</h1>
            </div>
            <div class="row g-5">
                <div style="border-radius: 15px;
                background: rgba(251, 251, 253, 0.652);
                box-shadow: 0 8px 32px 0 rgb(0, 0, 0);
                backdrop-filter: blur(8.5px);
                -webkit-backdrop-filter: blur(8.5px);
                border-radius: 10px;
                border: 1px solid rgba(255, 255, 255, 0.18);
                margin: 40px;" class="col-lg-3 col-md-3">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon mb-4">
                         <i class="fa fa-2x fa-user-md text-white"></i> 
                        </div>
                        <h4 class="mb-3">Indoor Service</h4>
                        <!-- <p class="m-0">Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo elitr dolor amet sit</p> -->
                        <a class="btn btn-lg btn-primary rounded-pill" href="http://localhost:8080/Wt_pro/homepage/service.html">
                             <i class="bi bi-arrow-right"></i> 
                        </a>
                    </div>
                </div>
                
                <div style="border-radius: 15px;
                background: rgba(251, 251, 253, 0.652);
                box-shadow: 0 8px 32px 0 rgb(0, 0, 0);
                backdrop-filter: blur(8.5px);
                -webkit-backdrop-filter: blur(8.5px);
                border-radius: 10px;
                border: 1px solid rgba(255, 255, 255, 0.18);
                margin: 40px;" class="col-lg-3 col-md-3">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon mb-4">
                            <i class="fa fa-2x fa-stethoscope text-white"></i>
                        </div>
                        <h4 class="mb-3">Outdoor Checkup</h4>
                        <!-- <p class="m-0">Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo elitr dolor amet sit</p> -->
                        <a class="btn btn-lg btn-primary rounded-pill" href="http://localhost:8080/Wt_pro/homepage/service.html">
                             <i class="bi bi-arrow-right"></i> 
                        </a>
                    </div>
                </div>
                <div style="border-radius: 15px;
                background: rgba(251, 251, 253, 0.652);
                box-shadow: 0 8px 32px 0 rgb(0, 0, 0);
                backdrop-filter: blur(8.5px);
                -webkit-backdrop-filter: blur(8.5px);
                border-radius: 10px;
                border: 1px solid rgba(255, 255, 255, 0.18);
                margin: 40px;" class="col-lg-3 col-md-3">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon mb-4">
                            <i class="fa fa-2x fa-ambulance text-white"></i>
                        </div>
                        <h4 class="mb-3">Transport Service</h4>
                        <!-- <p class="m-0">Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo elitr dolor amet sit</p> -->
                        <a class="btn btn-lg btn-primary rounded-pill" href="http://localhost:8080/Wt_pro/homepage/service.html">
                             <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div style="border-radius: 15px;
                background: rgba(251, 251, 253, 0.652);
                box-shadow: 0 8px 32px 0 rgb(0, 0, 0);
                backdrop-filter: blur(8.5px);
                -webkit-backdrop-filter: blur(8.5px);
                border-radius: 10px;
                border: 1px solid rgba(255, 255, 255, 0.18);
                margin: 40px;" class="col-lg-3 col-md-3">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon mb-4">
                            <i class="fa fa-2x fa-pills text-white"></i>
                        </div>
                        <h4 class="mb-3">Shopping Equipments</h4>
                        <!-- <p class="m-0">Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo elitr dolor amet sit</p> -->
                        <a class="btn btn-lg btn-primary rounded-pill" href="http://localhost/cardpage/index.php#">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div style="border-radius: 15px;
                background: rgba(251, 251, 253, 0.652);
                box-shadow: 0 8px 32px 0 rgb(0, 0, 0);
                backdrop-filter: blur(8.5px);
                -webkit-backdrop-filter: blur(8.5px);
                border-radius: 10px;
                border: 1px solid rgba(255, 255, 255, 0.18);
                margin: 40px;" class="col-lg-3 col-md-3">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon mb-4">
                            <i class="fa fa-2x fa-microscope text-white"></i>
                        </div>
                        <h4 class="mb-3">Queries Solving</h4>
                        <!-- <p class="m-0">Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo elitr dolor amet sit</p> -->
                        <a class="btn btn-lg btn-primary rounded-pill" href="http://localhost/ajaxfolder/bot.php">
                            <i class="bi bi-arrow-right"></i> 
                        </a>
                    </div>
                        
                </div>
                <div style="border-radius: 15px;
                background: rgba(251, 251, 253, 0.652);
                box-shadow: 0 8px 32px 0 rgb(0, 0, 0);
                backdrop-filter: blur(8.5px);
                -webkit-backdrop-filter: blur(8.5px);
                border-radius: 10px;
                border: 1px solid rgba(255, 255, 255, 0.18);
                margin: 40px;" class="col-lg-3 col-md-3">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon mb-4">
                            <i class="fa fa-2x fa-microscope text-white"></i>
                        </div>
                        <h4 class="mb-3">Other tests</h4>
                        <!-- <p class="m-0">Kasd dolor no lorem nonumy sit labore tempor at justo rebum rebum stet, justo elitr dolor amet sit</p> -->
                        <a class="btn btn-lg btn-primary rounded-pill" href="http://localhost:8080/Wt_pro/tests.html">
                            <i class="bi bi-arrow-right"></i> 
                        </a>
                    </div>
                        
                </div>
               
        </div>
    </div>
    <!-- Services End -->


   

    
  <%@ include file="blog.html"%> 


  
    

    <!-- Footer Start -->
    <div  class="container-fluid bg-dark text-light mt-5 py-5">
        <div style="margin-left: 610px;" class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Get In Touch</h4>
                    <p class="mb-4">We provide you with good services and with many types of clinical equipments for testing.For more details,Contact us</p>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary me-3"></i>No.2,3rd Cross Street,Rajaiyyer Thottam,Saram,Puducherry</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary me-3"></i>info@gmail.com</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary me-3"></i>9876543210</p>
                </div>
                <!-- <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Quick Links</h4>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Home</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>About Us</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Our Services</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Meet The Team</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Latest Blog</a>
                        <a class="text-light" href="#"><i class="fa fa-angle-right me-2"></i>Contact Us</a>
                    </div>
                </div> -->
                <!-- <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Popular Links</h4>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Home</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>About Us</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Our Services</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Meet The Team</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Latest Blog</a>
                        <a class="text-light" href="#"><i class="fa fa-angle-right me-2"></i>Contact Us</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Newsletter</h4>
                    <form action="">
                        <div class="input-group">
                            <input type="text" class="form-control p-3 border-0" placeholder="Your Email Address">
                            <button class="btn btn-primary">Sign Up</button>
                        </div>
                    </form> -->
                    <h6 class="text-primary text-uppercase mt-4 mb-3">Follow Us</h6>
                    <div class="d-flex">
                        <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href="#"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href="#"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid bg-dark text-light border-top border-secondary py-4">
        <div  class="container">
            <div  class="row g-5">
                <div  class="col-md-8 text-end">
                    <p  class="mb-md-0">&copy; <a  class="text-primary" href="#">RHLS CLINIC</a>. All Rights Reserved.</p>
                </div>
              
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>