<?php
session_start();
if (!isset($_SESSION['login'])){
    header("location: index.php");
}

?>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Ayurweda</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,400i,700,700i">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/fonts/typicons.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Animated-Pretty-Product-List-v12.css">
    <link rel="stylesheet" href="assets/css/Bootstrap-4---Payment-Form.css">
    <link rel="stylesheet" href="assets/css/Bootstrap-4-Calendar-No-Custom-Code.css">
    <link rel="stylesheet" href="assets/css/Bootstrap-Calendar.css">
    <link rel="stylesheet" href="assets/css/Calendar-BS4-1.css">
    <link rel="stylesheet" href="assets/css/Calendar-BS4.css">
    <link rel="stylesheet" href="assets/css/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-1.css">
    <link rel="stylesheet" href="assets/css/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-10.css">
    <link rel="stylesheet" href="assets/css/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-2.css">
    <link rel="stylesheet" href="assets/css/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-3.css">
    <link rel="stylesheet" href="assets/css/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-4.css">
    <link rel="stylesheet" href="assets/css/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-5.css">
    <link rel="stylesheet" href="assets/css/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-6.css">
    <link rel="stylesheet" href="assets/css/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-7.css">
    <link rel="stylesheet" href="assets/css/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-8.css">
    <link rel="stylesheet" href="assets/css/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-9.css">
    <link rel="stylesheet" href="assets/css/Calendar-JavaScript-Can-only-see-in-browser-preview-mode.css">
    <link rel="stylesheet" href="assets/css/dh-card-image-left-dark.css">
    <link rel="stylesheet" href="assets/css/dh-row-text-image-right.css">
    <link rel="stylesheet" href="assets/css/dh-row-titile-text-image-right-1.css">
    <link rel="stylesheet" href="assets/css/Footer-with-social-media-icons-1.css">
    <link rel="stylesheet" href="assets/css/Footer-with-social-media-icons.css">
    <link rel="stylesheet" href="assets/css/HMY-Responsive-nav-menu-V1-1.css">
    <link rel="stylesheet" href="assets/css/HMY-Responsive-nav-menu-V1.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/login-full-page-bs4.css">
    <link rel="stylesheet" href="assets/css/Login-with-overlay-image.css">
    <link rel="stylesheet" href="assets/css/Ludens-Users---2-Register.css">
    <link rel="stylesheet" href="assets/css/Navbar---Apple-1.css">
    <link rel="stylesheet" href="assets/css/Navbar---Apple.css">
    <link rel="stylesheet" href="assets/css/Navigation-Menu.css">
    <link rel="stylesheet" href="assets/css/Powerful-Calendar.css">
    <link rel="stylesheet" href="assets/css/Search-Input-Responsive-with-Icon.css">
    <link rel="stylesheet" href="assets/css/Social-Icon--hover-effect.css">
    <link rel="stylesheet" href="assets/css/Social-Icons.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/Ultimate-Event-Calendar.css">
</head>

<body style="background: #7CBCBC;">
    <nav class="navbar navbar-light navbar-expand-md" style="background: #81b1b1;">
        <div class="container-fluid">
            <div><a class="navbar-brand d-none" href="#"> </a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button></div><img src="assets/img/logo1.png" width="80">
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav fs-2 ms-auto main-nav" style="text-align: right; float: right;">
                    <li class="nav-item"><a class="nav-link fs-4" id="home" href="dashboard.php">Home </a></li>
                    <li class="nav-item"><a class="nav-link fs-4" href="medicine.php">Medicine</a></li>
                    <li class="nav-item"><a class="nav-link fs-4" href="doctors.php">Doctors</a></li>
                    <li class="nav-item"><a class="nav-link fs-4" href="#"><span style="text-decoration: underline;">About Us</span></a></li>
                    <li class="nav-item"> <a class="nav-link fs-4" href="#" style="float: left; color: #2b542c"><?php

                            echo $_SESSION['uname'];?></a> </li>
                </ul>
            </div>
        </div>
    </nav><img class="img-fluid d-none d-print-inline d-lg-inline d-xl-inline d-xxl-inline" src="assets/img/logo.png" width="50%" style="/*margin-bottom: 13px;*//*margin-right: 25px;*//*margin-top: 15px;*//*padding-right: 3px;*/float: left;">
    <div class="fs-3 text-center"><img src="assets/img/textlogo.png" width="200" height="203">
        <p class="font-monospace text-center" style="/*float: right;*/font-family: ABeeZee, sans-serif;text-align: center;">The main objective is to contribute to the&nbsp;<br>quality development of the field of Ayurveda&nbsp;<br>by providing maximum service in accordance&nbsp;<br>with professional ethics.</p>
        <footer id="footerpad" style="background: rgba(44,62,80,0);">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-8 mx-auto">
                        <ul class="list-inline text-center">
                            <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-facebook fa-stack-1x fa-inverse"></i></span></a></li>
                            <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-twitter fa-stack-1x fa-inverse"></i></span></a></li>
                            <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-instagram fa-stack-1x fa-inverse"></i></span></a></li>
                            <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x"></i><i class="fa fa-pinterest fa-stack-1x fa-inverse"></i></span></a></li>
                        </ul>
                        <p class="text-center">077-45094470&nbsp;&nbsp;info@nirwana.lk<br></p><p class="copyright text-muted text-center">Copyright &copy; නිර්වාණ 2021 | Web Design by nirwana.lk</p>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/login-full-page-bs4.js"></script>
    <script src="assets/js/login-full-page-bs4-1.js"></script>
    <script src="assets/js/Animated-Pretty-Product-List-v12.js"></script>
    <script src="assets/js/Bootstrap-4---Payment-Form.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-1.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-10.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-11.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-12.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-13.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-14.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-2.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-3.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-4.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-5.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-6.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-7.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-8.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode-9.js"></script>
    <script src="assets/js/Calendar-JavaScript-Can-only-see-in-browser-preview-mode.js"></script>
    <script src="assets/js/HMY-Responsive-nav-menu-V1.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"></script>
    <script src="assets/js/Navbar---Apple.js"></script>
    <script src="assets/js/Powerful-Calendar.js"></script>
    <script src="assets/js/Ultimate-Event-Calendar.js"></script>
</body>

</html>