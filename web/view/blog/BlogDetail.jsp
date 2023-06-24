<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page  import="DAO.DAOBlog"%>
<%@page  import="DAO.DAOPost"%>
<%@page  import="DAO.DAOMarketer"%>
<%@page  import="DAO.DAOSubject"%>
<%@page  import="java.util.List"%>
<%@page  import="Entities.Post"%>
<%@page  import="Entities.AccountMarketer"%>
<%@page  import="Entities.Subject"%>
<%@page  import="Entities.Blog"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <!--FIXXED-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="view/blog/assets/blog-css/blogdetailstyle.css"/>
        <link rel="stylesheet" href="themify-icons-font/themify-icons/themify-icons.css"/>
        <!--END FIXXED-->

        <!--favicon-->
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/logo/lloo.png" />

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"></script>



        <!--Component-->
        <link
            href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
            rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

        <!--popup of Marketer-->
        <link rel="stylesheet" href="./assets/css/newcss.css"/>
        <!-- fontanswer icons -->
        <script src="https://kit.fontawesome.com/fe000f9b2a.js" crossorigin="anonymous"></script>

        <!-- jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

        <style>
            .content{
                padding-left: 0px;
                padding-right: 0px;
            }
        </style>
    </head>
    <body>

        <jsp:include page="/jspClient/Header.jsp" ></jsp:include>


            <div class="space"></div>
            <div class="space"></div>
            <!----breadcrumbs-->
            <div class="breadcrumbs">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="breadcrumbs-content">
                                <h1 class="page-title" style="color: #000;">Featured Posts</h1>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12">
                            <ul class="breadcrumb-nav">
                                <li><a href="index.html">Home</a></li>
                                <li>Blog List</li>
                                <li>Overview Blog</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!----breadcrumbs-->

        <section class="section blog-single" style="padding-top: 10px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-12 col-12">
                        <div class="single-inner">
                            <div class="post-thumbnils">
                                <img src="assets/images/thumbnail-post/${postfollow.getImage()}" alt="#" onerror="this.src='assets/images/thumbnail-post/broken-image.png'" data-pagespeed-url-hash="3717390680">
                            </div>
                            <div class="post-details">
                                <div class="detail-inner">
                                    <h2 class="post-title">
                                        <a href="#">${postfollow.getTittle()}</a>
                                    </h2>

                                    <ul class="custom-flex post-meta">
                                        <li>
                                            <a href="javascript:void(0)">
                                                <div class="intro_author">
                                                    <div class="avatar_author" style="font-size: 2.9px;">
                                                        <img src="assets/avatar/${postfollow.getAm().getImage()}" alt="" onerror="this.src='view/blog/assets/img/broken-image.png'">
                                                    </div>
                                                    <div class="name_author">
                                                        ${postfollow.getAm().getDisplay_name()}
                                                    </div>
                                                </div> 
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">
                                                <i class="lni lni-calendar"></i>
                                                20th March 2023
                                            </a>
                                        </li>
                                    </ul>
                                    <p>${postfollow.getContent()}</p>

                                    <div class="post-social-media">
                                        <h5 class="share-title">Social Share</h5>
                                        <ul>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <i class="lni lni-facebook-filled"></i>
                                                    <span>facebook</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <i class="lni lni-twitter-original"></i>
                                                    <span>twitter</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <i class="lni lni-google"></i>
                                                    <span>google+</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <i class="lni lni-linkedin-original"></i>
                                                    <span>linkedin</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <i class="lni lni-pinterest"></i>
                                                    <span>pinterest</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <aside class="col-lg-4 col-md-12 col-12">
                        <div class="sidebar blog-grid-page">

                            <div class="widget popular-feeds" style="margin-top: 0;">
                                <h5 class="widget-title"><span>Latest Post</span></h5>
                                <div class="popular-feed-loop">
                                    <div class="single-popular-feed">
                                        <div class="feed-desc">
                                            <h6 class="post-title"><a href="detailpost?detailpost=${latestp.getPost_id()}">${latestp.getTittle()}</a></h6>
                                            <span class="time"><i class="lni lni-calendar"></i> ${latestp.getPosted_date()}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget popular-feeds" style="margin-top: 0;">
                                <h5 class="widget-title"><span>Popular Feeds</span></h5>
                                <div class="popular-feed-loop">
                                    <div class="single-popular-feed">
                                        <div class="feed-desc">
                                            <h6 class="post-title"><a href="javascript:void(0)">NULL</a></h6>
                                            <span class="time"><i class="lni lni-calendar"></i> 05th Nov 2023</span>
                                        </div>
                                    </div>
                                    <div class="single-popular-feed">
                                        <div class="feed-desc">
                                            <h6 class="post-title"><a href="javascript:void(0)">NULL</a></h6>
                                            <span class="time"><i class="lni lni-calendar"></i> 24th March 2023</span>
                                        </div>
                                    </div>
                                    <div class="single-popular-feed">
                                        <div class="feed-desc">
                                            <h6 class="post-title"><a href="javascript:void(0)">NULL</a></h6>
                                            <span class="time"><i class="lni lni-calendar"></i> 30th Jan 2023</span>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="widget categories-widget">
                                <h5 class="widget-title"><span>Categories Blog</span></h5>
                                <ul class="custom">
                                    <c:forEach items="${blist}" var="b">
                                        <li>
                                            <a href="javascript:void(0)">${b.getBlog_name()}<span>${100}</span></a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>

                        </div>
                    </aside>
                    <div class="row">
                        <div class="card-deck col-md-12" style="display: flex; flex-flow: wrap;">
                            <c:forEach var="e" items="${listpexcept}">
                                <div class="card col-md-4" style="width: 30%; margin: 5px 4px" >
                                    <img class="card-img" 
                                         src="view/blog/assets/img/imgPost/${p.getImage()}" alt="banner.png" onerror="this.src='view/blog/assets/img/broken-image.png'">
                                    <div class="card-body">
                                        <h4 class="card-title"><a href="detailpost?detailpost=${e.getPost_id()}">${e.tittle}</a></h4>
                                        <p class="card-text">${e.getShort_content()}</p>

                                    </div>

                                </div>
                            </c:forEach>

                            <div class="col-md-4" style="position: relative;">
                                <div class="boxing-item" style="border: 1px solid black; position: absolute; top: 50%; left: 10%; width: 240px; height: 40px;"> <p style="text-align: center; line-height: 40px;"><a href="listpost">CHECK OUT OTHER POSTS</a></p> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="/jspClient/Footer.jsp" />

        <!-- ========================= JS here ========================= -->
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/tiny-slider.js"></script>
        <script src="assets/js/glightbox.min.js"></script>
        <script src="assets/js/main.js"></script>
        <script type="text/javascript">
            //========= Category Slider 
            tns({
                container: '.category-slider',
                items: 3,
                slideBy: 'page',
                autoplay: false,
                mouseDrag: true,
                gutter: 0,
                nav: false,
                controls: true,
                controlsText: ['<i class="lni lni-chevron-left"></i>', '<i class="lni lni-chevron-right"></i>'],
                responsive: {
                    0: {
                        items: 1,
                    },
                    540: {
                        items: 2,
                    },
                    768: {
                        items: 4,
                    },
                    992: {
                        items: 5,
                    },
                    1170: {
                        items: 6,
                    }
                }
            });



        </script>

    </body>
</html>
