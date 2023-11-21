<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Header Section Begin -->
<header class="header-section">
    <div class="header-top">
        <div class="container">
            <div class="ht-left">
                <div class="mail-service">
                    <i class=" fa fa-envelope"></i>
                    group4@gmail.com
                </div>
                <div class="phone-service">
                    <i class=" fa fa-phone"></i>
                    +65 11.188.888
                </div>
            </div>
            <div class="ht-right">
                <c:if test="${sessionScope.acc != null}">
                        <div class="login-panel">
                            <div class="dropdownlog">
                            <a class="dropbtnlog"><i class="fa fa-user"></i>${sessionScope.acc.username}</a>
                            <div class="dropdownlog-content">
                                <a href="profile">Profile</a>
                            <a href="logout">Logout</a>
                            </div>
                            </div>
                        </div>
<!--                           <a class="login-panel"><i class="fa fa-user"></i>${sessionScope.acc.username}</a>-->
                
                    </c:if>
                    
                    <c:if test="${sessionScope.acc == null}">
                        <a href="Login.jsp" class="login-panel"><i class="fa fa-user"></i>Login</a>
                    </c:if>   

                <div class="lan-selector">
                    <select class="language_drop" name="countries" id="countries" style="width:300px;">
                        <option value='yt' data-image="img/flag-1.jpg" data-imagecss="flag yt"
                                data-title="English">English</option>
<!--                        <option value='yu' data-image="img/flag-2.jpg" data-imagecss="flag yu"
                                data-title="Bangladesh">German</option>-->
                    </select>
                </div>
                <div class="top-social">
                    <a href="#"><i class="ti-facebook"></i></a>
                    <a href="#"><i class="ti-twitter-alt"></i></a>
                    <a href="#"><i class="ti-linkedin"></i></a>
                    <a href="#"><i class="ti-pinterest"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="inner-header">
            <div class="row">
                <div class="col-lg-2 col-md-2">
                    <div class="logo">
                        <a href="home">
                            <img src="img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-7 col-md-7">
                    <div class="advanced-search">
                        <button type="button" class="category-btn">All Categories</button>
                        <form action="search" class="input-group">
                                <input name="txt" type="text" placeholder="What do you need?">
                                <button type="submit"><i class="ti-search"></i></button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-3 text-right col-md-3">
                    <ul class="nav-right">
<!--                        <li class="heart-icon"><a href="#">
                                <i class="icon_heart_alt"></i>
                                <span>1</span>
                            </a>
                        </li>-->
                        <li class="cart-icon"><a href="managercart">
                                <i class="icon_bag_alt"></i>
                            </a>
                            
                        </li>
                        <li class="cart-price">$${totalMoney}</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="nav-item">
        <div class="container">
            <div class="nav-depart">
                <div class="depart-btn">
                    <i class="ti-menu"></i>
                    <span>All departments</span>
                    <ul class="depart-hover">
                        <li><a href="category?cid=${7}">Women’s Shoes</a></li>
                        <li><a href="category?cid=${6}">Men’s Shoes</a></li>
                        
                    </ul>
                </div>
            </div>
            <nav class="nav-menu mobile-menu">
                <ul>
                    <li><a href="home">Home</a></li>
                    <li><a href="shop">Shop</a></li>
                    <li><a href="#">Collection</a>
                        <ul class="dropdown">
                            <li><a href="category?cid=${6}">Men's</a></li>
                            <li><a href="category?cid=${7}">Women's</a></li>
                            
                        </ul>
                    </li>
<!--                    <li class=""><a href="Blog.jsp">Blog</a></li>-->
                    <li><a href="Contact.jsp">Contact</a></li>
                    <li><a href="#">Pages</a>
                        <ul class="dropdown">
                            <li><a href="managercart">Shopping Cart</a></li>
                            <li><a href="loadtracking">My Purchases</a></li>
                            <c:if test="${sessionScope.acc == null}">
                            <li><a href="Register.jsp">Register</a></li>
                            <li><a href="Login.jsp">Login</a></li>
                            </c:if>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div id="mobile-menu-wrap"></div>
        </div>
    </div>
    
            <style>
.dropdownlog-content {
  display: none;
  background: white;
  position: absolute;
  min-width: 160px;
  z-index: 1;
}

.dropdownlog-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}


.dropdownlog:hover .dropdownlog-content {
  display: block;
}

</style>
</header>
