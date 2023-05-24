<%-- 
    Document   : SubjectDetails
    Created on : May 24, 2023, 4:38:21 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <title>ClassiGrids - Classified Ads and Listing Website Template.</title>
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

        <%
        String subject_name = (String) request.getAttribute("subject_name");
        ResultSet rsCourse = (ResultSet) request.getAttribute("rsCourse");
        %>

        <jsp:include page="Header.jsp"></jsp:include>

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
                                <!-- End Search Form -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Hero Area -->

            <!-- Start Categories Area -->
            <section class="categories">
                <div class="container">
                    <div class="cat-inner">
                        <div class="row">
                            <div class="col-12 p-0">
                                <div class="category-slider">
                                    <!-- Start Single Category -->
                                    <a href="SubjectController?service=details&id=1" class="single-cat">
                                        <div class="icon">
                                            <img src="../assets/images/categories/C.png" alt="#">
                                        </div>
                                        <h3>C</h3>
                                        <h5 class="total">35</h5>
                                    </a>
                                    <!-- End Single Category -->
                                    <!-- Start Single Category -->
                                    <a href="category.html" class="single-cat">
                                        <div class="icon">
                                            <img src="https://tse1.mm.bing.net/th?id=OIP.E3u5DstNSu_PUW6-aBdCOgHaEK&pid=Api&P=0&h=180" alt="#">
                                        </div>
                                        <h3>Program</h3>
                                        <h5 class="total">22</h5>
                                    </a>
                                    <!-- End Single Category -->
                                    <!-- Start Single Category -->
                                    <a href="category.html" class="single-cat">
                                        <div class="icon">
                                            <img src="../assets/images/categories/matrimony.svg" alt="#">
                                        </div>
                                        <h3>Subject Name</h3>
                                        <h5 class="total">số lượng course</h5>
                                    </a>
                                    <!-- End Single Category -->
                                    <!-- Start Single Category -->
                                    <a href="category.html" class="single-cat">
                                        <div class="icon">
                                            <img src="../assets/images/categories/furniture.svg" alt="#">
                                        </div>
                                        <h3>Subject Name</h3>
                                        <h5 class="total">số lượng course</h5>
                                    </a>
                                    <!-- End Single Category -->
                                    <!-- Start Single Category -->
                                    <a href="category.html" class="single-cat">
                                        <div class="icon">
                                            <img src="../assets/images/categories/jobs.svg" alt="#">
                                        </div>
                                        <h3>Subject Name</h3>
                                        <h5 class="total">số lượng course</h5>
                                    </a>
                                    <!-- End Single Category -->
                                    <!-- Start Single Category -->
                                    <a href="category.html" class="single-cat">
                                        <div class="icon">
                                            <img src="../assets/images/categories/real-estate.svg" alt="#">
                                        </div>
                                        <h3>Subject Name</h3>
                                        <h5 class="total">số lượng course</h5>
                                    </a>
                                    <!-- End Single Category -->
                                    <!-- Start Single Category -->
                                    <a href="category.html" class="single-cat">
                                        <div class="icon">
                                            <img src="../assets/images/categories/laptop.svg" alt="#">
                                        </div>
                                        <h3>Subject Name</h3>
                                        <h5 class="total">số lượng course</h5>
                                    </a>
                                    <!-- End Single Category -->
                                    <!-- Start Single Category -->
                                    <a href="category.html" class="single-cat">
                                        <div class="icon">
                                            <img src="../assets/images/categories/hospital.svg" alt="#">
                                        </div>
                                        <h3>Subject Name</h3>
                                        <h5 class="total">số lượng course</h5>
                                    </a>
                                    <!-- End Single Category -->
                                    <!-- Start Single Category -->
                                    <a href="category.html" class="single-cat">
                                        <div class="icon">
                                            <img src="../assets/images/categories/tshirt.svg" alt="#">
                                        </div>
                                        <h3>Subject Name</h3>
                                        <h5 class="total">số lượng course</h5>
                                    </a>
                                    <!-- End Single Category -->
                                    <!-- Start Single Category -->
                                    <a href="category.html" class="single-cat">
                                        <div class="icon">
                                            <img src="../assets/images/categories/education.svg" alt="#">
                                        </div>
                                        <h3>Subject Name</h3>
                                        <h5 class="total">số lượng course</h5>
                                    </a>
                                    <!-- End Single Category -->
                                    <!-- Start Single Category -->
                                    <a href="category.html" class="single-cat">
                                        <div class="icon">
                                            <img src="../assets/images/categories/controller.svg" alt="#">
                                        </div>
                                        <h3>Subject Name</h3>
                                        <h5 class="total">số lượng course</h5>
                                    </a>
                                    <!-- End Single Category -->
                                    <!-- Start Single Category -->
                                    <a href="category.html" class="single-cat">
                                        <div class="icon">
                                            <img src="../assets/images/categories/travel.svg" alt="#">
                                        </div>
                                        <h3>Subject Name</h3>
                                        <h5 class="total">số lượng course</h5>
                                    </a>
                                    <!-- End Single Category -->
                                    <!-- Start Single Category -->
                                    <a href="category.html" class="single-cat">
                                        <div class="icon">
                                            <img src="../assets/images/categories/watch.svg" alt="#">
                                        </div>
                                        <h3>Subject Name</h3>
                                        <h5 class="total">số lượng course</h5>
                                    </a>
                                    <!-- End Single Category -->
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
                    <div class="single-head">
                        <div class="row">
                        <%while(rsCourse.next()) {%>
                        <div class="col-lg-4 col-md-4 col-12">
                                <!-- Start Single Grid -->
                                <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                    <div class="image"> <!--ảnh course-->
                                        <!--Click vào ảnh cũng giống như click vào phần details -->
                                        <a href="#" class="thumbnail"><img height="218px" src="<%=rsCourse.getString(6)%>" alt="#"></a>
                                        <div class="author">
                                            <a href="#" class="sale"> Join to study </a>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <div class="top-content">
                                            <h2><%=subject_name%></h2>
                                            <p class="title"><%=rsCourse.getString(4)%></p>
                                            <p class="update-time">Cập nhật ngày <%=rsCourse.getString(9)%></p>
                                            <ul class="rating">
                                                <li>Số người tham gia (<%=rsCourse.getInt(8)%>)</a></li>
                                            </ul>
                                        </div>
                                        <div class="bottom-content">
                                            <a href="CourseController?service=details&id=<%=rsCourse.getInt(1)%>" class="btn btn-block btn-primary">Details</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single Grid -->
                            </div>
                        <%}%>
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

        <jsp:include page="Footer.jsp"></jsp:include>

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
