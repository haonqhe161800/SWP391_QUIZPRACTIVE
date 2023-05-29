<%-- 
    Document   : login
    Created on : May 25, 2023, 3:46:49 PM
    Author     : Nam Kroos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">


<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Login - ClassiGrids Classified Ads and Listing Website Template</title>
<meta name="description" content />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />


<link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&amp;display=swap" rel="stylesheet">

<link rel="stylesheet" href="assets/css/A.bootstrap.min.css%2bLineIcons.2.0.css%2banimate.css%2btiny-slider.css%2bglightbox.min.css%2cMcc.4RKRGkT2S5.css.pagespeed.cf.tPexlwcGLm.css" />
<link rel="stylesheet" href="assets/css/A.main.css.pagespeed.cf.65XS99l10B.css" />
<script data-pagespeed-no-defer>(function(){function f(a,b,d){if(a.addEventListener)a.addEventListener(b,d,!1);else if(a.attachEvent)a.attachEvent("on"+b,d);else{var c=a["on"+b];a["on"+b]=function(){d.call(this);c&&c.call(this)}}};window.pagespeed=window.pagespeed||{};var g=window.pagespeed;function k(a){this.g=[];this.f=0;this.h=!1;this.j=a;this.i=null;this.l=0;this.b=!1;this.a=0}function l(a,b){var d=b.getAttribute("data-pagespeed-lazy-position");if(d)return parseInt(d,0);var d=b.offsetTop,c=b.offsetParent;c&&(d+=l(a,c));d=Math.max(d,0);b.setAttribute("data-pagespeed-lazy-position",d);return d}
function m(a,b){var d,c,e;if(!a.b&&(0==b.offsetHeight||0==b.offsetWidth))return!1;a:if(b.currentStyle)c=b.currentStyle.position;else{if(document.defaultView&&document.defaultView.getComputedStyle&&(c=document.defaultView.getComputedStyle(b,null))){c=c.getPropertyValue("position");break a}c=b.style&&b.style.position?b.style.position:""}if("relative"==c)return!0;e=0;"number"==typeof window.pageYOffset?e=window.pageYOffset:document.body&&document.body.scrollTop?e=document.body.scrollTop:document.documentElement&&
document.documentElement.scrollTop&&(e=document.documentElement.scrollTop);d=window.innerHeight||document.documentElement.clientHeight||document.body.clientHeight;c=e;e+=d;var h=b.getBoundingClientRect();h?(e=h.top-d,c=h.bottom):(h=l(a,b),d=h+b.offsetHeight,e=h-e,c=d-c);return e<=a.f&&0<=c+a.f}
k.prototype.m=function(a){p(a);var b=this;window.setTimeout(function(){var d=a.getAttribute("data-pagespeed-lazy-src");if(d)if((b.h||m(b,a))&&-1!=a.src.indexOf(b.j)){var c=a.parentNode,e=a.nextSibling;c&&c.removeChild(a);a.c&&(a.getAttribute=a.c);a.removeAttribute("onload");a.tagName&&"IMG"==a.tagName&&g.CriticalImages&&f(a,"load",function(){g.CriticalImages.checkImageForCriticality(this);b.b&&(b.a--,b.a||g.CriticalImages.checkCriticalImages())});a.removeAttribute("data-pagespeed-lazy-src");a.removeAttribute("data-pagespeed-lazy-replaced-functions");
c&&c.insertBefore(a,e);if(c=a.getAttribute("data-pagespeed-lazy-srcset"))a.srcset=c,a.removeAttribute("data-pagespeed-lazy-srcset");a.src=d}else b.g.push(a)},0)};k.prototype.loadIfVisibleAndMaybeBeacon=k.prototype.m;k.prototype.s=function(){this.h=!0;q(this)};k.prototype.loadAllImages=k.prototype.s;function q(a){var b=a.g,d=b.length;a.g=[];for(var c=0;c<d;++c)a.m(b[c])}function t(a,b){return a.a?null!=a.a(b):null!=a.getAttribute(b)}
k.prototype.u=function(){for(var a=document.getElementsByTagName("img"),b=0,d;d=a[b];b++)t(d,"data-pagespeed-lazy-src")&&p(d)};k.prototype.overrideAttributeFunctions=k.prototype.u;function p(a){t(a,"data-pagespeed-lazy-replaced-functions")||(a.c=a.getAttribute,a.getAttribute=function(a){"src"==a.toLowerCase()&&t(this,"data-pagespeed-lazy-src")&&(a="data-pagespeed-lazy-src");return this.c(a)},a.setAttribute("data-pagespeed-lazy-replaced-functions","1"))}
g.o=function(a,b){function d(){if(!(c.b&&a||c.i)){var b=200;200<(new Date).getTime()-c.l&&(b=0);c.i=window.setTimeout(function(){c.l=(new Date).getTime();q(c);c.i=null},b)}}var c=new k(b);g.lazyLoadImages=c;f(window,"load",function(){c.b=!0;c.h=a;c.f=200;if(g.CriticalImages){for(var b=0,d=document.getElementsByTagName("img"),r=0,n;n=d[r];r++)-1!=n.src.indexOf(c.j)&&t(n,"data-pagespeed-lazy-src")&&b++;c.a=b;c.a||g.CriticalImages.checkCriticalImages()}q(c)});b.indexOf("data")&&((new Image).src=b);f(window,
"scroll",d);f(window,"resize",d)};g.lazyLoadInit=g.o;})();

pagespeed.lazyLoadInit(true, "../../pagespeed_static/1.JiBnMqyl6S.gif");
</script></head>
<body>
<div class="preloader">
<div class="preloader-inner">
<div class="preloader-icon">
<span></span>
<span></span>
</div>
</div>
</div>


<header class="header navbar-area">
<div class="container">
<div class="row align-items-center">
<div class="col-lg-12">
<div class="nav-inner">
<nav class="navbar navbar-expand-lg">
<a class="navbar-brand" href="index-2.html">
<img src="assets/images/logo/logo.svg" alt="Logo">
</a>
<button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="toggler-icon"></span>
<span class="toggler-icon"></span>
<span class="toggler-icon"></span>
</button>
<div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
<ul id="nav" class="navbar-nav ms-auto">
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-1" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Home</a>
<ul class="sub-menu collapse" id="submenu-1-1">
<li class="nav-item"><a href="index-2.html">Home Default</a></li>
<li class="nav-item"><a href="index2.html">Home Version 2</a></li>
<li class="nav-item"><a href="index3.html">Home Version 3</a></li>
</ul>
</li>
<li class="nav-item">
<a href="category.html" aria-label="Toggle navigation">Categories</a>
</li>
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-3" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Listings</a>
<ul class="sub-menu collapse" id="submenu-1-3">
<li class="nav-item"><a href="item-listing-grid.html">Ad Grid</a></li>
<li class="nav-item"><a href="item-listing-list.html">Ad Listing</a></li>
<li class="nav-item"><a href="item-details.html">Ad Details</a></li>
</ul>
</li>
<li class="nav-item">
<a class=" active dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Pages</a>
<ul class="sub-menu mega-menu collapse" id="submenu-1-4">
<li class="single-block">
<ul>
<li class="mega-menu-title">Essential Pages</li>
<li class="nav-item"><a href="about-us.html">About Us</a></li>
<li class="nav-item"><a href="item-details.html">Ads Details</a></li>
<li class="nav-item"><a href="post-item.html">Ads Post</a></li>
<li class="nav-item"><a href="pricing.html">Pricing Table</a></li>
<li class="nav-item"><a href="registration.html">Sign Up</a></li>
<li class="nav-item active"><a href="login.html">Sign In</a></li>
<li class="nav-item"><a href="contact.html">Contact Us</a></li>
<li class="nav-item"><a href="faq.html">FAQ</a></li>
<li class="nav-item"><a href="404.html">Error Page</a></li>
<li class="nav-item"><a href="mail-success.html">Mail Success</a>
</li>
<li class="nav-item"><a href="coming-soon.html">Comming Soon</a>
</li>
</ul>
</li>
<li class="single-block">
<ul>
<li class="mega-menu-title">Dashboard</li>
<li class="nav-item"><a href="dashboard.html">Account Overview</a>
</li>
<li class="nav-item"><a href="profile-settings.html">My Profile</a>
</li>
<li class="nav-item"><a href="my-items.html">My Ads</a></li>
<li class="nav-item"><a href="favourite-items.html">Favorite Ads</a>
</li>
<li class="nav-item"><a href="post-item.html">Ad post</a></li>
<li class="nav-item"><a href="bookmarked-items.html">Bookmarked Ad</a>
</li>
<li class="nav-item"><a href="messages.html">Messages</a></li>
<li class="nav-item"><a href="delete-account.html">Close account</a>
</li>
<li class="nav-item"><a href="invoice.html">Invoice</a></li>
</ul>
</li>
</ul>
</li>
<li class="nav-item">
<a class=" dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#submenu-1-5" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">Blog</a>
<ul class="sub-menu collapse" id="submenu-1-5">
<li class="nav-item"><a href="blog-grid-sidebar.html">Blog Grid Sidebar</a>
</li>
<li class="nav-item"><a href="blog-single.html">Blog Single</a></li>
<li class="nav-item"><a href="blog-single-sidebar.html">Blog Single
Sibebar</a></li>
</ul>
</li>
</ul>
</div> 
<div class="login-button">
<ul>
<li>
<a href="login.html"><i class="lni lni-enter"></i> Login</a>
</li>
<li>
<a href="registration.html"><i class="lni lni-user"></i> Register</a>
</li>
</ul>
</div>
<div class="button header-button">
<a href="post-item.html" class="btn">Post an Ad</a>
</div>
</nav> 
</div>
</div>
</div> 
</div> 
</header>


<div class="breadcrumbs">
<div class="container">
<div class="row align-items-center">
<div class="col-lg-6 col-md-6 col-12">
<div class="breadcrumbs-content">
<h1 class="page-title">Login</h1>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul class="breadcrumb-nav">
<li><a href="index-2.html">Home</a></li>
<li>Login</li>
</ul>
</div>
</div>
</div>
</div>


<section class="login section">
<div class="container">
<div class="row">
<div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
<div class="form-head">
<h4 class="title">Login</h4>
<form action="#!" method="post">
<div class="form-group">
<label>Username or email</label>
<input name="email" type="email">
</div>
<div class="form-group">
<label>Password</label>
<input name="password" type="password">
</div>
<div class="check-and-pass">
<div class="row align-items-center">
<div class="col-lg-6 col-md-6 col-12">
<div class="form-check">
<input type="checkbox" class="form-check-input width-auto" id="exampleCheck1">
<label class="form-check-label">Remember me</label>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<a href="javascript:void(0)" class="lost-pass">Lost your password?</a>
</div>
</div>
</div>
<div class="button">
<button type="submit" class="btn">Login Now</button>
</div>
<div class="alt-option">
<span>Or</span>
</div>
<div class="socila-login">
<ul>
<li><a href="javascript:void(0)" class="facebook"><i class="lni lni-facebook-original"></i>Login With
Facebook</a></li>
<li><a href="javascript:void(0)" class="google"><i class="lni lni-google"></i>Login With Google
Plus</a>
</li>
</ul>
</div>
<p class="outer-link">Don't have an account? <a href="registration.html">Register here</a>
</p>
</form>
</div>
</div>
</div>
</div>
</section>


<div class="newsletter section">
<div class="container">
<div class="inner-content">
<div class="row align-items-center">
<div class="col-lg-6 col-md-6 col-12">
<div class="title">
<i class="lni lni-alarm"></i>
<h2>Newsletter</h2>
<p>We don't send spam so don't worry.</p>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<div class="form">
<form action="#" method="get" target="_blank" class="newsletter-form">
<input name="EMAIL" placeholder="Your email address" type="email">
<div class="button">
<button class="btn">Subscribe<span class="dir-part"></span></button>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>


<footer class="footer">

<div class="footer-top">
<div class="container">
<div class="row">
<div class="col-lg-3 col-md-6 col-12">

<div class="single-footer mobile-app">
<h3>Mobile Apps</h3>
<div class="app-button">
<a href="javascript:void(0)" class="btn">
<i class="lni lni-play-store"></i>
<span class="text">
<span class="small-text">Get It On</span>
Google Play
</span>
</a>
<a href="javascript:void(0)" class="btn">
<i class="lni lni-apple"></i>
<span class="text">
<span class="small-text">Get It On</span>
App Store
</span>
</a>
</div>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12">

<div class="single-footer f-link">
<h3>Locations</h3>
<div class="row">
<div class="col-lg-6 col-md-6 col-12">
<ul>
<li><a href="javascript:void(0)">Chicago</a></li>
<li><a href="javascript:void(0)">New York City</a></li>
<li><a href="javascript:void(0)">San Francisco</a></li>
<li><a href="javascript:void(0)">Washington</a></li>
<li><a href="javascript:void(0)">Boston</a></li>
</ul>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul>
<li><a href="javascript:void(0)">Los Angeles</a></li>
<li><a href="javascript:void(0)">Seattle</a></li>
<li><a href="javascript:void(0)">Las Vegas</a></li>
<li><a href="javascript:void(0)">San Diego</a></li>
</ul>
</div>
</div>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12">

<div class="single-footer f-link">
<h3>Quick Links</h3>
<ul>
<li><a href="javascript:void(0)">About Us</a></li>
<li><a href="javascript:void(0)">How It's Works</a></li>
<li><a href="javascript:void(0)">Login</a></li>
<li><a href="javascript:void(0)">Signup</a></li>
<li><a href="javascript:void(0)">Help & Support</a></li>
</ul>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12">

<div class="single-footer f-contact">
<h3>Contact</h3>
<ul>
<li>23 New Design Str, Lorem Upsum 10<br> Hudson Yards, USA</li>
<li>Tel. +(123) 1800-567-8990 <br> Mail. <a href="https://demo.graygrids.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="f4878184849b8680b497989587879d93869d9087da979b99">[email&#160;protected]</a></li>
</ul>
</div>

</div>
</div>
</div>
</div>


<div class="footer-bottom">
<div class="container">
<div class="inner">
<div class="row">
<div class="col-12">
<div class="content">
<ul class="footer-bottom-links">
<li><a href="javascript:void(0)">Terms of use</a></li>
<li><a href="javascript:void(0)"> Privacy Policy</a></li>
<li><a href="javascript:void(0)">Advanced Search</a></li>
<li><a href="javascript:void(0)">Site Map</a></li>
<li><a href="javascript:void(0)">Information</a></li>
</ul>
<p class="copyright-text">Designed and Developed by <a href="https://graygrids.com/" rel="nofollow" target="_blank">GrayGrids</a>
</p>
<ul class="footer-social">
<li><a href="javascript:void(0)"><i class="lni lni-facebook-filled"></i></a></li>
<li><a href="javascript:void(0)"><i class="lni lni-twitter-original"></i></a></li>
<li><a href="javascript:void(0)"><i class="lni lni-youtube"></i></a></li>
<li><a href="javascript:void(0)"><i class="lni lni-linkedin-original"></i></a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>

</footer>


<a href="#" class="scroll-top btn-hover">
<i class="lni lni-chevron-up"></i>
</a>

<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/bootstrap.min.js%2bwow.min.js.pagespeed.jc.7bCeVoCJ7m.js"></script><script>eval(mod_pagespeed_ThcNtUtH70);</script>
<script>eval(mod_pagespeed_CsQgnkoSEo);</script>
<script src="assets/js/tiny-slider.js.pagespeed.jm.G_Zu5oEg54.js"></script>
<script src="assets/js/glightbox.min.js%2bmain.js.pagespeed.jc.wSczMGTP4u.js"></script><script>eval(mod_pagespeed_yykQpIVYYZ);</script>
<script>eval(mod_pagespeed_HdsMDM_iw_);</script>
</body>

<!-- Mirrored from demo.graygrids.com/themes/classigrids-demo/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 23 May 2023 17:18:28 GMT -->
</html>