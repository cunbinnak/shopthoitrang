<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<link href="<c:url value='/template/admin/vendor/font-awesome-4.7/css/font-awesome.min.css'/>" rel="stylesheet" media="all">
        <!-- Favicon -->
        <link rel="shortcut icon" href="http://event-theme.com/favicon.ico">

        <!-- Google Webfont -->
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,200,100,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,300,300italic,700,900' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

        <!-- CSS -->
        <link rel="stylesheet" href="<c:url value='template/web/font-awesome/css/font-awesome.css'/>">
        <!--<link rel="stylesheet" href="css/bootstrap.min.css">-->
        <link rel="stylesheet" href="<c:url value='template/web/css/bootstrap.css'/>">
        <link rel="stylesheet" href="<c:url value='template/web/js/vendors/isotope/isotope.css'/>">
        <link rel="stylesheet" href="<c:url value='template/web/js/vendors/slick/slick.css'/>">
        <link rel="stylesheet" href="<c:url value='template/web/js/vendors/rs-plugin/css/settings.css'/>">
        <link rel="stylesheet" href="<c:url value='template/web/js/vendors/select/jquery.selectBoxIt.css'/>">
        <link rel="stylesheet" href="<c:url value='template/web/css/subscribe-better.css'/>">
        <link rel="stylesheet" href="../../../../ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/ui-lightness/jquery-ui.css">
        <link rel="stylesheet" href="<c:url value='template/web/css/style.css'/>">
</head>
<body>
<div class="top_bar">
                <div class="container">
                    <div class="row">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="tb_left pull-left">
                                    <p>Welcome to our online store !</p>
                                </div>
                                <div class="tb_center pull-left">
                                    <ul>
                                        <li><i class="fa fa-phone"></i> Hotline: <a href="#">(+84) 972 260 479</a></li>
                                        <li><i class="fa fa-envelope-o"></i> <a href="#">online support@smile.com</a></li>
                                    </ul>
                                </div>
                                <div class="tb_right pull-right">
                                    <ul>
                                        <li>
                                            <div class="tbr-info">
                                                <span>Account <i class="fa fa-caret-down"></i></span>
                                                <div class="tbr-inner">
                                                    <a href="my-account.html">My Account</a>
                                                    <a href="#">My Wishlist</a>
                                                    <a href="#">Checkout</a>
                                                    <a href="login">Login</a>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="tbr-info">
                                                <span><img src="images/basic/flag1.png" alt=""/>&nbsp;English <i class="fa fa-caret-down"></i></span>
                                                <div class="tbr-inner">
                                                    <a href="#"><img src="images/basic/flag1.png" alt=""/>English</a>
                                                    <a href="#"><img src="images/basic/flag2.png" alt=""/>French</a>
                                                    <a href="#"><img src="images/basic/flag3.png" alt=""/>German</a>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="tbr-info">
                                                <span>US Dollar <i class="fa fa-caret-down"></i></span>
                                                <div class="tbr-inner">
                                                    <a href="#">&euro; Euro</a>
                                                    <a href="#">&pound; Pound</a>
                                                    <a href="#">&yen; Yen</a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- HEADER -->
            <header>
                <nav class="navbar navbar-default">
                    <div class="container">
                        <div class="row">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <!-- Logo -->
                                <a class="navbar-brand" href="./index.html"><img src="template/web/images/basic/logo.png" class="img-responsive" alt=""/></a>
                            </div>
                            <!-- Cart & Search -->
                            <div class="header-xtra pull-right">
                                <div class="topcart">
                                    <a href="/Do-an/shopping/addcart.htm"><i class="fa fa-shopping-cart"></i></a>
                                    <div class="cart-info">
                                        <small>You have <em class="highlight">3 item(s)</em> in your shopping bag</small>
                                        <div class="ci-item">
                                            <img src="images/products/fashion/8.jpg" width="80" alt=""/>
                                            <div class="ci-item-info">
                                                <h5><a href="./single-product.html">Product fashion</a></h5>
                                                <p>2 x $250.00</p>
                                                <div class="ci-edit">
                                                    <a href="#" class="edit fa fa-edit"></a>
                                                    <a href="#" class="edit fa fa-trash"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ci-item">
                                            <img src="images/products/fashion/15.jpg" width="80" alt=""/>
                                            <div class="ci-item-info">
                                                <h5><a href="./single-product.html">Product fashion</a></h5>
                                                <p>2 x $250.00</p>
                                                <div class="ci-edit">
                                                    <a href="#" class="edit fa fa-edit"></a>
                                                    <a href="#" class="edit fa fa-trash"></a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="ci-total">Subtotal: $750.00</div>
                                        <div class="cart-btn">
                                            <a href="#">View Bag</a>
                                            <a href="#">Checkout</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="topsearch">
                                    <span>
                                        <i class="fa fa-search"></i>
                                    </span>
                                    <form class="searchtop">
                                        <input type="text" placeholder="Search entire store here.">
                                    </form>
                                </div>
                            </div>
                            <!-- Navmenu -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav navbar-right">
                                    <li class="dropdown">
                                        <a href="index1.html">Home</a>
                                    </li>
                                    <li class="dropdown mmenu">
                                        <a href="categories-grid.html">Shop</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="blog.html">Blog</a>
                                        <!-- <ul class="dropdown-menu submenu" role="menu">
                                            <li><a href="./blog.html">Blog Posts</a>
                                            <li><a href="./blog-single.html">Blog Single</a>
                                        </ul> -->
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Pages</a>
                                        <ul class="dropdown-menu submenu" role="menu">
                                            <li><a href="account-information.html"> Account Information </a></li>                   
                                            <li><a href="cng-pw.html">Change Password</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a href="contact-1.html">Contact Us</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </header>



<script src="<c:url value='template/web/js/jquery.js'/>"></script>
	
		<!-- ADDTHIS -->
		<script type="text/javascript" src="../../../../s7.addthis.com/js/300/addthis_widget.js#pubid=ra-557a95e76b3e51d9" async="async"></script>
		<script type="text/javascript">
			// Call this function once the rest of the document is loaded
			function loadAddThis() {
				addthis.init()
			}
		</script>
		<script src="<c:url value='template/web/js/bootstrap.min.js'/>"></script>
		<script src="<c:url value='template/web/js/bs-navbar.js'/>"></script>
		<script src="<c:url value='template/web/js/vendors/isotope/isotope.pkgd.js'/>"></script>
		<script src="<c:url value='template/web/js/vendors/slick/slick.min.js'/>"></script>
		<script src="<c:url value='template/web/js/vendors/tweets/tweecool.min.js'/>"></script>
		<script src="<c:url value='template/web/js/vendors/rs-plugin/js/jquery.themepunch.revolution.min.js'/>"></script>
		<script src="<c:url value='template/web/js/vendors/rs-plugin/js/jquery.themepunch.tools.min.js'/>"></script>
		<script src="<c:url value='template/web/js/jquery.sticky.js'/>"></script>
		<script src="<c:url value='template/web/js/jquery.subscribe-better.js'/>"></script>
		<script src="../../../../code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
		<script src="<c:url value='template/web/js/vendors/select/jquery.selectBoxIt.min.js'/>"></script>
		<script src="<c:url value='template/web/js/main.js'/>"></script>
</body>
</html>