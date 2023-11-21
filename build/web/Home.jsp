<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Fashi Template">
        <meta name="keywords" content="Fashi, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Fashi | Template</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/themify-icons.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>

    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <jsp:include page="top.jsp"></jsp:include>

            <!-- Hero Section Begin -->
            <section class="hero-section">
                <div class="hero-items owl-carousel">
                    <div class="single-hero-items set-bg" data-setbg="img/Home_img1.jpg">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-5">
                                    <span>Exclusive</span>
                                    <h1>Black friday</h1>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                        incididunt ut labore et dolore</p>
                                    <a href="Shop.jsp" class="primary-btn">Shop Now</a>
                                </div>
                            </div>
                            <div class="off-card">
                                <h2>Sale <span>50%</span></h2>
                            </div>
                        </div>
                    </div>
                    <div class="single-hero-items set-bg" data-setbg="img/Home_img2.jpg">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-5">
                                    <span>Bag,kids</span>
                                    <h1>Black friday</h1>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                        incididunt ut labore et dolore</p>
                                    <a href="#" class="primary-btn">Shop Now</a>
                                </div>
                            </div>
                            <div class="off-card">
                                <h2>Sale <span>50%</span></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Hero Section End -->

            <!-- Banner Section Begin -->
            <div class="banner-section spad">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="single-banner">
                                <img src="img/banner-1.jpg" alt="">
                                <div class="inner-text">
                                    <h4>Men’s</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="single-banner">
                                <img src="img/banner-2.jpg" alt="">
                                <div class="inner-text">
                                    <h4>Women’s</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Banner Section End -->

            <!-- Women Banner Section Begin -->
            <section class="women-banner spad">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="product-large set-bg" data-setbg="img/products/women-large.jpg">
                                <h2>Women’s</h2>
                                <a href="shop">Discover More</a>
                            </div>
                        </div>
                        <div class="col-lg-8 offset-lg-1">
                            <div class="filter-control">
                                <ul>
                                    <li  class="active">Shoes</li>
                                </ul>
                            </div>
                            <div class="product-slider owl-carousel">
                            <c:forEach items="${listW}" var="o">
                                <div class="product-item">                                
                                    <div class="pi-pic">                                       
                                        <img src="${o.product_image}" alt="">
                                        <div class="sale">Sale</div>
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                            <li class="quick-view"><a href="#">+ Quick View</a></li>
                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">Coat</div>
                                        <a href="#">
                                            <h5>${o.product_name}</h5>
                                        </a>
                                        <div class="product-price">
                                            $${o.product_price}
                                        </div>
                                    </div>
                                </div>
                            </c:forEach> 
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Women Banner Section End -->

        <!-- Deal Of The Week Section Begin-->
        <section class="deal-of-week set-bg spad" data-setbg="img/Home_img2.jpg">
            <div class="container">
                <div class="col-lg-6 text-center">
                    <div class="section-title">
                        <h2 style="color: white">Deal Of The Week</h2>
                        <p style="color: white">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed<br /> do ipsum dolor sit amet,
                            consectetur adipisicing elit </p>
                        
                    </div>
                    <div class="countdown-timer" id="countdown">
                        <div class="cd-item">
                            <span>56</span>
                            <p>Days</p>
                        </div>
                        <div class="cd-item">
                            <span>12</span>
                            <p>Hrs</p>
                        </div>
                        <div class="cd-item">
                            <span>40</span>
                            <p>Mins</p>
                        </div>
                        <div class="cd-item">
                            <span>52</span>
                            <p>Secs</p>
                        </div>
                    </div>
                    <a href="shop" class="primary-btn">Shop Now</a>
                </div>
            </div>
        </section>
        <!-- Deal Of The Week Section End -->

        <!-- Man Banner Section Begin -->
        <section class="man-banner spad">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 offset-lg-1">
                        <div class="product-large set-bg m-small" data-setbg="img/products/man-large.jpg">
                            <h2>Men’s</h2>
                            <a href="shop">Discover More</a>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="filter-control">
                            <ul>
                                <li class="active">Shoes</li>
                            </ul>
                        </div>
                        <div class="product-slider owl-carousel">
                            <c:forEach items="${listM}" var="o">
                                <div class="product-item">
                                    <div class="pi-pic">
                                        <img src="${o.product_image}" alt="">
                                        <div class="sale">Sale</div>
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                        <ul>
                                            <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                            <li class="quick-view"><a href="#">+ Quick View</a></li>
                                            <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">Coat</div>
                                        <a href="#">
                                            <h5>${o.product_name}</h5>
                                        </a>
                                        <div class="product-price">
                                            $${o.product_price}
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Man Banner Section End -->

<!-- Instagram Section Begin -->
<div class="instagram-photo">
    <div class="insta-item set-bg" data-setbg="img/insta-1.jpg">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5><a href="#">colorlib_Collection</a></h5>
        </div>
    </div>
    <div class="insta-item set-bg" data-setbg="img/insta-2.jpg">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5><a href="#">colorlib_Collection</a></h5>
        </div>
    </div>
    <div class="insta-item set-bg" data-setbg="img/insta-3.jpg">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5><a href="#">colorlib_Collection</a></h5>
        </div>
    </div>
    <div class="insta-item set-bg" data-setbg="img/insta-4.jpg">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5><a href="#">colorlib_Collection</a></h5>
        </div>
    </div>
    <div class="insta-item set-bg" data-setbg="img/insta-5.jpg">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5><a href="#">colorlib_Collection</a></h5>
        </div>
    </div>
    <div class="insta-item set-bg" data-setbg="img/insta-6.jpg">
        <div class="inside-text">
            <i class="ti-instagram"></i>
            <h5><a href="#">colorlib_Collection</a></h5>
        </div>
    </div>
</div>
<!-- Instagram Section End -->

<!-- Latest Blog Section Begin -->
<section class="latest-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>From The Blog</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="single-latest-blog">
                    <img src="img/latest-1.jpg" alt="">
                    <div class="latest-text">
                        <div class="tag-list">
                            <div class="tag-item">
                                <i class="fa fa-calendar-o"></i>
                                May 4,2019
                            </div>
                            <div class="tag-item">
                                <i class="fa fa-comment-o"></i>
                                5
                            </div>
                        </div>
                        <a href="#">
                            <h4>The Best Street Style From London Fashion Week</h4>
                        </a>
                        <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-latest-blog">
                    <img src="img/latest-2.jpg" alt="">
                    <div class="latest-text">
                        <div class="tag-list">
                            <div class="tag-item">
                                <i class="fa fa-calendar-o"></i>
                                May 4,2019
                            </div>
                            <div class="tag-item">
                                <i class="fa fa-comment-o"></i>
                                5
                            </div>
                        </div>
                        <a href="#">
                            <h4>Vogue's Ultimate Guide To Autumn/Winter 2019 Shoes</h4>
                        </a>
                        <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-latest-blog">
                    <img src="img/latest-3.jpg" alt="">
                    <div class="latest-text">
                        <div class="tag-list">
                            <div class="tag-item">
                                <i class="fa fa-calendar-o"></i>
                                May 4,2019
                            </div>
                            <div class="tag-item">
                                <i class="fa fa-comment-o"></i>
                                5
                            </div>
                        </div>
                        <a href="#">
                            <h4>How To Brighten Your Wardrobe With A Dash Of Lime</h4>
                        </a>
                        <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="benefit-items">
            <div class="row">
                <div class="col-lg-4">
                    <div class="single-benefit">
                        <div class="sb-icon">
                            <img src="img/icon-1.png" alt="">
                        </div>
                        <div class="sb-text">
                            <h6>Free Shipping</h6>
                            <p>For all order over 99$</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-benefit">
                        <div class="sb-icon">
                            <img src="img/icon-2.png" alt="">
                        </div>
                        <div class="sb-text">
                            <h6>Delivery On Time</h6>
                            <p>If good have prolems</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-benefit">
                        <div class="sb-icon">
                            <img src="img/icon-1.png" alt="">
                        </div>
                        <div class="sb-text">
                            <h6>Secure Payment</h6>
                            <p>100% secure payment</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Latest Blog Section End -->

<jsp:include page="bottom.jsp"></jsp:include>

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/jquery.dd.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>
