
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Dashboard-detailpost</title>
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
                                <li><a href="dashboardmarketer">Dashboard</a></li>
                                <li><a href="dashboardlistpost">List Post</a></li>
                                <li>Detail Post</li>
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
                                    <img src="assets/images/thumbnail-post/${ppppp.getImage()}" alt="#" onerror="this.src='assets/images/thumbnail-post/broken-image.png'" data-pagespeed-url-hash="3717390680">
                            </div>
                            <div class="post-details">
                                <div class="detail-inner">
                                    <h2 class="post-title">
                                        <a href="#">${ppppp.getTittle()}</a>
                                    </h2>

                                    <ul class="custom-flex post-meta">
                                        <li>
                                            <a href="#">
                                                <div class="intro_author">
                                                    <div class="avatar_author" style="font-size: 2.9px;">
                                                        <img src="assets/avatar/${ppppp.getAm().getImage()}" alt="" onerror="this.src='assets/avatar/base.png'">
                                                    </div>
                                                    <div class="name_author">
                                                        ${ppppp.getAm().getDisplay_name()}
                                                    </div>
                                                </div> 
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="lni lni-calendar"></i>
                                                <fmt:formatDate value="${ppppp.getPosted_date()}" pattern="dd-MM-yyyy" />
                                            </a>
                                        </li>
                                    </ul>
                                    <p>${ppppp.getContent()}</p>

                                    <div class="post-social-media">
                                        <h5 class="share-title">Social Share</h5>
                                        <ul>
                                            <li>
                                                <a href="#">
                                                    <i class="lni lni-facebook-filled"></i>
                                                    <span>facebook</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="lni lni-twitter-original"></i>
                                                    <span>twitter</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="lni lni-google"></i>
                                                    <span>google+</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="lni lni-linkedin-original"></i>
                                                    <span>linkedin</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
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
                    <aside class="col-lg-4 col-md-12 col-12" style="background-color: #fff">
                        <div class="sidebar blog-grid-page">
                            <div class="widget categories-widget">
                                <h5>Relative Subject:</h5>
                                <span style="padding: 5px 0;">${sssss.getSubject_name()}</span>
                            </div>
                        </div>
                        <div class="sidebar blog-grid-page">
                            <div class="widget categories-widget">
                                <h5>Category Blog:</h5>
                                <span style="padding: 5px 0;"> ${ppppp.getB().getBlog_name()}</span>
                            </div>
                        </div>
                        <div class="sidebar blog-grid-page">
                            <div class="widget categories-widget">
                                <h5>Status:</h5>
                                <c:choose>
                                    <c:when test="${ppppp.getStatus() == 'approved'}">
                                        <span style="background-color: green;
                                              font-weight: 600;
                                              border-radius: 5px;
                                              padding: 7px;"> ${ppppp.getStatus()}</span>
                                    </c:when>
                                    <c:when test="${ppppp.getStatus() == 'rejected'}">
                                        <span style="background-color: red;
                                              font-weight: 600;
                                              border-radius: 5px;
                                              padding: 7px;"> ${ppppp.getStatus()}</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span style="background-color: yellow;
                                              font-weight: 600;
                                              border-radius: 5px;
                                              padding: 7px;"> ${ppppp.getStatus()}</span>
                                    </c:otherwise>
                                </c:choose>             
                            </div>
                        </div>    
                    </aside>
                </div>
            </div>                            
        </section>



        <jsp:include page="/jspClient/Footer.jsp" />
        <script>
            let sidebar = document.querySelector(".sidebar");
            let closeBtn = document.querySelector("#btn");

            closeBtn.addEventListener("click", () => {
                sidebar.classList.toggle("open");
                menuBtnChange();//calling the function(optional)
            });

            // following are the code to change sidebar button(optional)
            function menuBtnChange() {
                if (sidebar.classList.contains("open")) {
                    closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
                } else {
                    closeBtn.classList.replace("bx-menu-alt-right", "bx-menu");//replacing the iocns class
                }
            }


            // dialog menu
            let iconUp = document.querySelector(".fa-chevron-down");
            let dialogMenu = document.querySelector(".dropdown-ofme");
            iconUp.addEventListener("click", () => {
                dialogMenu.classList.toggle("show");
                dialogChange();
            })
            function dialogChange() {
                if (dialogMenu.classList.contains("show")) {
                    iconUp.classList.replace("fa-chevron-down", "fa-chevron-up");
                } else {
                    iconUp.classList.replace("fa-chevron-up", "fa-chevron-down");
                }
            }
        </script>
    </body>
</html>
