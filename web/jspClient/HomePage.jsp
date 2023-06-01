<%-- 
    Document   : HomePage
    Created on : May 19, 2023, 3:15:45 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Quiz Practice</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />
    <!-- Place favicon.ico in the root directory -->

    <!-- Web Font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

    <!-- ========================= CSS here ========================= -->
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./assets/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="./assets/css/animate.css" />
    <link rel="stylesheet" href="./assets/css/tiny-slider.css" />
    <link rel="stylesheet" href="./assets/css/glightbox.min.css" />
    <link rel="stylesheet" href="./assets/css/main.css" />
</head>

<body>
    

<!--     Start Header Area 
    <jsp:include page="Header.jsp"></jsp:include>
     End Header Area -->


    <!-- Start Hero Area -->
    <section class="hero-area overlay">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1 col-md-12 col-12">
                    <div class="hero-text text-center">
                        <!-- Start Hero Text -->
                        <div class="section-heading">
                            <h2 class="wow fadeInUp" data-wow-delay=".3s">Welcome to Practice Quiz Web</h2>
                            <p class="wow fadeInUp" data-wow-delay=".5s">Let's learn and progress together</p>
                        </div>
                        <!-- End Search Form -->
                        <!-- Start Search Form -->
                        <div class="search-form wow fadeInUp" data-wow-delay=".7s">
                            <div class="row">
                                <div class="col-lg-7 col-md-7 col-12 p-0">
                                    <div class="search-input">
                                        <label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
                                        <input type="text" name="keyword" id="keyword" placeholder="Enter something ...">
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-12 p-0">
                                    <div class="search-input">
                                        <label for="category"><i class="lni lni-grid-alt theme-color"></i></label>
                                        <select name="category" id="category">
                                            <option value="none" selected disabled>Categories</option>
                                            <option value="none">Mentor</option>
                                            <option value="none">Advertisement</option>
                                            <option value="none">Course</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-12 p-0">
                                    <div class="search-btn button">
                                        <button class="btn"><i class="lni lni-search-alt"></i> Search</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Search Form -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Hero Area -->

    
    <!-- Start Categories Area -->
    
    <%
        ResultSet rsSubject = (ResultSet)request.getAttribute("rsSubject");
        ResultSet rsCourse = (ResultSet)request.getAttribute("rsCourse");
        ResultSet rsMentor = (ResultSet)request.getAttribute("rsMentor");
        ResultSet rsMarketing = (ResultSet)request.getAttribute("rsMarketing");
    %>
    
    <section class="categories">
        <div class="container">
            <div class="cat-inner">
                <div class="row">
                    <div class="col-12 p-0">
                        <div class="category-slider">
                            <%while(rsSubject.next()) {%>
                            <a href="SubjectController?service=details&id=<%=rsSubject.getInt(2)%>" class="single-cat">
                                <div class="icon">
                                    <img src="<%=rsSubject.getString(3)%>" alt="#">
                                </div>
                                <h3><%=rsSubject.getString(1)%></h3>
                                <h5 class="total"><%=rsSubject.getInt(4)%></h5>
                            </a>
                            <% } %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /End Categories Area -->

    
    
    
    <!-- List Course -->
    <section class="items-grid section custom-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">Latest Course</h2>
                    </div>
                </div>
            </div>
            
            <div class="single-head">
                <div class="row">
                    <%while(rsCourse.next()) {%>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image"> <!--ảnh course-->
                                <!--Click vào ảnh cũng giống như click vào phần details -->
                                <a href="#" class="thumbnail">
                                    <img height="218px" src="<%=rsCourse.getString(6)%>" alt="#">
                                </a>
                                <div class="author">
                                    <div class="author-image">    <!--ảnh mentor-->
                                        <a href="#">
                                            <img src="./assets/images/items-grid/author-1.jpg" alt="#">
                                        <span>Mentor name</span>
                                        </a>
                                    </div>
                                    <a href="#" class="sale"> Join to study </a>
                                </div>
                            </div>
                            <div class="content">
                                <div class="top-content">
                                    <p><%=rsCourse.getString(4)%></p>
                                    <h3 class="title"> <%=rsCourse.getString(11)%>  </h3>
                                    <p class="update-time">Ngày update gần nhất <%=rsCourse.getString(9)%></p>
                                    <ul class="rating">
                                        <li>số người joined (<%=rsCourse.getInt(8)%>)</li>
                                    </ul>
                                    <ul class="info-list">
                                        <li><i class="lni lni-timer"></i> Ngày đăng khóa học <%=rsCourse.getString(9)%></li>
                                    </ul>
                                </div>
                                <div class="bottom-content">
                                    <a href="#" class="btn btn-block btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% } %>
                </div>
            </div>
            <div class="row view-all" style="margin-top: 10px">
                <div class="col-lg-5 col-md-5 col-12"></div>
                <div class="col-lg-2 col-md-2 col-12">
                    <a href="#" class="btn btn-block btn-primary"> View All Course</a>
                </div>
                <div class="col-lg-5 col-md-5 col-12"></div>
            </div>
        </div>
    </section>
    
    
    
                
                
                
    <!--Mentor List-->
    <!-- Chỗ này copy bên trên, còn làm thì tự thiết kế -->
    <section class="items-grid section custom-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">List Mentor Outstanding</h2>
                    </div>
                </div>
            </div>
            <div class="single-head">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Grid -->
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image"> <!--ảnh course-->
                                <!--Click vào ảnh cũng giống như click vào phần details -->
                                <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                <div class="author">
                                    <div class="author-image">    <!--ảnh mentor-->
                                        <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                        <span>Mentor name</span></a>
                                    </div>
                                    <a href="#" class="sale"> Join to study </a>
                                </div>
                            </div>
                            <div class="content">
                                <div class="top-content">
                                    <p>Subject name</p>
                                    <h3 class="title"> Course Name </h3>
                                    <p class="update-time">Ngày update gần nhất</p>
                                    <ul class="rating">
                                        <li>số người joined (35)</a></li>
                                    </ul>
                                    <ul class="info-list">
                                        <li><i class="lni lni-timer"></i> Ngày đăng khóa học</a></li>
                                    </ul>
                                </div>
                                <div class="bottom-content">
                                    <a href="#" class="btn btn-block btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Grid -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Grid -->
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image"> <!--ảnh course-->
                                <!--Click vào ảnh cũng giống như click vào phần details -->
                                <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                <div class="author">
                                    <div class="author-image">    <!--ảnh mentor-->
                                        <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                        <span>Mentor name</span></a>
                                    </div>
                                    <a href="#" class="sale"> Join to study </a>
                                </div>
                            </div>
                            <div class="content">
                                <div class="top-content">
                                    <p>Subject name</p>
                                    <h3 class="title"> Course Name </h3>
                                    <p class="update-time">Ngày update gần nhất</p>
                                    <ul class="rating">
                                        <li>số người joined (35)</a></li>
                                    </ul>
                                    <ul class="info-list">
                                        <li><i class="lni lni-timer"></i> Ngày đăng khóa học</a></li>
                                    </ul>
                                </div>
                                <div class="bottom-content">
                                    <a href="#" class="btn btn-block btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Grid -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Grid -->
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image"> <!--ảnh course-->
                                <!--Click vào ảnh cũng giống như click vào phần details -->
                                <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                <div class="author">
                                    <div class="author-image">    <!--ảnh mentor-->
                                        <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                        <span>Mentor name</span></a>
                                    </div>
                                    <a href="#" class="sale"> Join to study </a>
                                </div>
                            </div>
                            <div class="content">
                                <div class="top-content">
                                    <p>Subject name</p>
                                    <h3 class="title"> Course Name </h3>
                                    <p class="update-time">Ngày update gần nhất</p>
                                    <ul class="rating">
                                        <li>số người joined (35)</a></li>
                                    </ul>
                                    <ul class="info-list">
                                        <li><i class="lni lni-timer"></i> Ngày đăng khóa học</a></li>
                                    </ul>
                                </div>
                                <div class="bottom-content">
                                    <a href="#" class="btn btn-block btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Grid -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Grid -->
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image"> <!--ảnh course-->
                                <!--Click vào ảnh cũng giống như click vào phần details -->
                                <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                <div class="author">
                                    <div class="author-image">    <!--ảnh mentor-->
                                        <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                        <span>Mentor name</span></a>
                                    </div>
                                    <a href="#" class="sale"> Join to study </a>
                                </div>
                            </div>
                            <div class="content">
                                <div class="top-content">
                                    <p>Subject name</p>
                                    <h3 class="title"> Course Name </h3>
                                    <p class="update-time">Ngày update gần nhất</p>
                                    <ul class="rating">
                                        <li>số người joined (35)</a></li>
                                    </ul>
                                    <ul class="info-list">
                                        <li><i class="lni lni-timer"></i> Ngày đăng khóa học</a></li>
                                   </ul>
                                </div>
                                <div class="bottom-content">
                                    <a href="#" class="btn btn-block btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Grid -->
                    </div>
                </div>
            </div>
            <div class="row view-all" style="margin-top: 10px">
                <div class="col-lg-5 col-md-5 col-12"></div>
                <div class="col-lg-2 col-md-2 col-12">
                    <a href="#" class="btn btn-block btn-primary"> View All Mentor</a>
                </div>
                <div class="col-lg-5 col-md-5 col-12"></div>
            </div>
        </div>
    </section>
    
    
    
    
    
    <!-- Tương tự bên trên, phần này là list ad -->
    <section class="items-grid section custom-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">Latest Ads</h2>
                    </div>
                </div>
            </div>
            <div class="single-head">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Grid -->
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image"> <!--ảnh course-->
                                <!--Click vào ảnh cũng giống như click vào phần details -->
                                <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                <div class="author">
                                    <div class="author-image">    <!--ảnh mentor-->
                                        <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                        <span>Mentor name</span></a>
                                    </div>
                                    <a href="#" class="sale"> Join to study </a>
                                </div>
                            </div>
                            <div class="content">
                                <div class="top-content">
                                    <p>Subject name</p>
                                    <h3 class="title"> Course Name </h3>
                                    <p class="update-time">Ngày update gần nhất</p>
                                    <ul class="rating">
                                        <li>số người joined (35)</a></li>
                                    </ul>
                                    <ul class="info-list">
                                        <li><i class="lni lni-timer"></i> Ngày đăng khóa học</a></li>
                                    </ul>
                                </div>
                                <div class="bottom-content">
                                    <a href="#" class="btn btn-block btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Grid -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Grid -->
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image"> <!--ảnh course-->
                                <!--Click vào ảnh cũng giống như click vào phần details -->
                                <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                <div class="author">
                                    <div class="author-image">    <!--ảnh mentor-->
                                        <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                        <span>Mentor name</span></a>
                                    </div>
                                    <a href="#" class="sale"> Join to study </a>
                                </div>
                            </div>
                            <div class="content">
                                <div class="top-content">
                                    <p>Subject name</p>
                                    <h3 class="title"> Course Name </h3>
                                    <p class="update-time">Ngày update gần nhất</p>
                                    <ul class="rating">
                                        <li>số người joined (35)</a></li>
                                    </ul>
                                    <ul class="info-list">
                                        <li><i class="lni lni-timer"></i> Ngày đăng khóa học</a></li>
                                    </ul>
                                </div>
                                <div class="bottom-content">
                                    <a href="#" class="btn btn-block btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Grid -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Grid -->
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image"> <!--ảnh course-->
                                <!--Click vào ảnh cũng giống như click vào phần details -->
                                <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                <div class="author">
                                    <div class="author-image">    <!--ảnh mentor-->
                                        <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                        <span>Mentor name</span></a>
                                    </div>
                                    <a href="#" class="sale"> Join to study </a>
                                </div>
                            </div>
                            <div class="content">
                                <div class="top-content">
                                    <p>Subject name</p>
                                    <h3 class="title"> Course Name </h3>
                                    <p class="update-time">Ngày update gần nhất</p>
                                    <ul class="rating">
                                        <li>số người joined (35)</a></li>
                                    </ul>
                                    <ul class="info-list">
                                        <li><i class="lni lni-timer"></i> Ngày đăng khóa học</a></li>
                                    </ul>
                                </div>
                                <div class="bottom-content">
                                    <a href="#" class="btn btn-block btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Grid -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Grid -->
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image"> <!--ảnh course-->
                                <!--Click vào ảnh cũng giống như click vào phần details -->
                                <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                <div class="author">
                                    <div class="author-image">    <!--ảnh mentor-->
                                        <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                        <span>Mentor name</span></a>
                                    </div>
                                    <a href="#" class="sale"> Join to study </a>
                                </div>
                            </div>
                            <div class="content">
                                <div class="top-content">
                                    <p>Subject name</p>
                                    <h3 class="title"> Course Name </h3>
                                    <p class="update-time">Ngày update gần nhất</p>
                                    <ul class="rating">
                                        <li>số người joined (35)</a></li>
                                    </ul>
                                    <ul class="info-list">
                                        <li><i class="lni lni-timer"></i> Ngày đăng khóa học</a></li>
                                    </ul>
                                </div>
                                <div class="bottom-content">
                                    <a href="#" class="btn btn-block btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Grid -->
                    </div>
                </div>
            </div>
            <div class="row view-all" style="margin-top: 10px">
                <div class="col-lg-5 col-md-5 col-12"></div>
                <div class="col-lg-2 col-md-2 col-12">
                    <a href="#" class="btn btn-block btn-primary"> View All Ads</a>
                </div>
                <div class="col-lg-5 col-md-5 col-12"></div>
            </div>
        </div>
    </section>
    
    
    
    
    <!-- /End Why Choose Area -->
   
    
    
    
    <!-- start Footer -->
    <jsp:include page="Footer.jsp"></jsp:include>
    <!--/ End Footer Area -->

    
    
    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top btn-hover">
        <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="./assets/js/bootstrap.min.js"></script>
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/tiny-slider.js"></script>
    <script src="./assets/js/glightbox.min.js"></script>
    <script src="./assets/js/main.js"></script>
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
