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

<body style="background: url(&quot;assets/img/logo.png&quot;) center / contain no-repeat, #7CBCBC;background-attachment: fixed;">
    <nav class="navbar navbar-light navbar-expand-md">
        <div class="container-fluid">
            <div><a class="navbar-brand d-none" href="#"> </a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button></div><img src="assets/img/logo1.png" width="80">
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav fs-2 ms-auto main-nav" style="text-align: right; float: right;">
                    <li class="nav-item"><a class="nav-link fs-4" id="home" href="dashboard.php">Home </a></li>
                    <li class="nav-item"><a class="nav-link fs-4" href="#"><span style="text-decoration: underline;">Medicine</span></a></li>
                    <li class="nav-item"><a class="nav-link fs-4" href="doctors.php">Doctors</a></li>
                    <li class="nav-item"><a class="nav-link fs-4" href="AboutUS.php">About Us</a></li>
                    <li class="nav-item"> <a class="nav-link fs-4" href="#" style="float: left; color: #2b542c"><?php

                            echo $_SESSION['uname'];?></a> </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row product-list dev">
            <div class="col-sm-6 col-md-4 visible product-item animation-element slide-top-left">
                <div class="product-container" style="background: rgba(255,255,255,0.38);border-style: solid;border-color: rgb(255,255,255);border-radius: 40px;">
                    <div class="row">
                        <div class="col-md-12"><a class="product-image" href="Diabetes.php" style="background: rgba(255,255,255,0);"><img src="assets/img/ayurveda-medicine-therapy-panchakarma-health-health-9342e682d4a669a94204e49e76a8a20d.png"></a></div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h2><a href="Diabetes.php"><strong>Diabetes.</strong></a></h2>
                            <h2><a href="Diabetes.php"><strong>දියවැඩියාව.</strong></a></h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 product-item animation-element slide-rotate-clockwise">
                <div class="product-container" style="background: rgba(255,255,255,0.38);border-radius: 40px;border-color: rgb(255,255,255);">
                    <div class="row">
                        <div class="col-md-12"><a class="product-image" href="Dandruff.php"><img src="assets/img/herbs-for-hair-image-removebg-preview.png"></a></div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h2><a href="Dandruff.php"><strong>Dandruff.</strong></a></h2>
                            <h2><a href="Dandruff.php"><strong>හිස්හොරි.</strong></a></h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 product-item animation-element slide-top-right">
                <div class="product-container" style="background: rgba(255,255,255,0.38);border-color: rgb(255,255,255);border-radius: 40px;">
                    <div class="row">
                        <div class="col-md-12"><a class="product-image" href="SnakeVenom.php"><img src="assets/img/Picsart_22-03-18_20-11-24-407.png"></a></div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h2><a href="SnakeVenom.php"><strong>Snake Venom.</strong></a></h2>
                            <h2><a href="SnakeVenom.php"><strong>සර්ප විෂ.</strong><br></a></h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 product-item animation-element slide-fade-slow">
                <div class="product-container" style="border-radius: 40px;border-color: rgb(255,255,255);background: rgba(255,255,255,0.38);">
                    <div class="row">
                        <div class="col-md-12"><a class="product-image" href="KidneyDesease.php"><img src="assets/img/provisions-for-manufacturing-of-ayurvedic-drugs-removebg-preview.png"></a></div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h2><a href="KidneyDesease.php">Kidney Decease.</a></h2>
                            <h2><a href="KidneyDesease.php"><strong>වකුගඩු රෝග.</strong></a></h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 product-item animation-element slide-fade">
                <div class="product-container" style="background: rgba(255,255,255,0.38);border-color: rgb(255,255,255);border-radius: 40px;">
                    <div class="row">
                        <div class="col-md-12"><a class="product-image" href="Toothache.php"><img src="assets/img/ayurvedic-medicine-removebg-preview.png"></a></div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h2><a href="Toothache.php"><strong>Toothache.</strong></a></h2>
                            <h2><a href="Toothache.php"><strong>දත් කැක්කුම.</strong><br></a></h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 product-item animation-element slide-fade-xslow">
                <div class="product-container" style="border-radius: 40px;background: rgba(255,255,255,0.38);">
                    <div class="row">
                        <div class="col-md-12"><a class="product-image" href="Headache.php"><img src="assets/img/ayurvedic-1296x728-header-removebg-preview.png"></a></div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h2><a href="Headache.php"><strong>Headache.</strong></a></h2>
                            <h2><a href="Headache.php"><strong>හිසරදය.</strong><br></a></h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 product-item animation-element slide-left">
                <div class="product-container" style="background: rgba(255,255,255,0.38);border-radius: 40px;">
                    <div class="row">
                        <div class="col-md-12"><a class="product-image" href="Synonyms.php"><img src="assets/img/IMG_20220318_200809.png"></a></div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h2><a href="Synonyms.php"><strong>Synonyms.</strong></a></h2>
                            <h2><a href="Synonyms.php"><strong>උෂ්ණ රෝග.</strong></a></h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 product-item animation-element slide-top">
                <div class="product-container" style="border-radius: 40px;background: rgba(255,255,255,0.38);">
                    <div class="row">
                        <div class="col-md-12"><a class="product-image" href="abdominal.php"><img src="assets/img/5-Ayurvedic-Medicines_Blog-removebg-preview.png"></a></div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h2><a href="abdominal.php"><strong>Abdominal Pain.</strong></a></h2>
                            <h2><a href="abdominal.php"><strong>බඩේ අමාරුව.</strong><br></a></h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 product-item animation-element slide-right">
                <div class="product-container" style="background: rgba(255,255,255,0.38);border-radius: 40px;">
                    <div class="row">
                        <div class="col-md-12"><a class="product-image" href="SnakeVenom.php"><img src="assets/img/Picsart_22-03-18_20-11-24-407.png"></a></div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h2><a href="SnakeVenom.php"><strong>Snake Venom.</strong></a></h2>
                            <h2><a href="SnakeVenom.php"><strong>සර්ප විෂ.</strong><br></a></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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