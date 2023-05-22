<%-- 
    Document   : subjectDetail
    Created on : May 20, 2023, 3:28:59 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../assets/css/LineIcons.2.0.css" />
        <link rel="stylesheet" href="../assets/css/animate.css" />
        <link rel="stylesheet" href="../assets/css/tiny-slider.css" />
        <link rel="stylesheet" href="../assets/css/glightbox.min.css" />
        <link rel="stylesheet" href="../assets/css/main.css" />
    </head>
    <body>
        
        <jsp:include page="Header.jsp"></jsp:include>
        
        <section class="hero-area overlay">
            <section class="items-grid section custom-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-title">
                                <h2 class="wow fadeInUp" data-wow-delay=".4s">Giới thiệu về subject</h2>
                                <!--                        <p class="wow fadeInUp" data-wow-delay=".6s">There are many variations of passages of Lorem
                                                            Ipsum available, but the majority have suffered alteration in some form.</p>-->
                            </div>
                        </div>
                    </div>
                    <div class="single-head">
                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-12">
                                <!-- Start Single Grid -->
                                <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                    <div class="image"> <!--ảnh course-->
                                        <!--Click vào ảnh cũng giống như click vào phần details -->
                                        <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                        <div class="author">
                                            <div class="author-image">    <!--ảnh mentor-->
                                                <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                                <a href="#">Mentor name</a>
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
                            <div class="col-lg-4 col-md-6 col-12">
                                <!-- Start Single Grid -->
                                <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                    <div class="image"> <!--ảnh course-->
                                        <!--Click vào ảnh cũng giống như click vào phần details -->
                                        <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                        <div class="author">
                                            <div class="author-image">    <!--ảnh mentor-->
                                                <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                                <a href="#">Mentor name</a>
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
                            <div class="col-lg-4 col-md-6 col-12">
                                <!-- Start Single Grid -->
                                <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                    <div class="image"> <!--ảnh course-->
                                        <!--Click vào ảnh cũng giống như click vào phần details -->
                                        <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                        <div class="author">
                                            <div class="author-image">    <!--ảnh mentor-->
                                                <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                                <a href="#">Mentor name</a>
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
                            <div class="col-lg-4 col-md-6 col-12">
                                <!-- Start Single Grid -->
                                <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                    <div class="image"> <!--ảnh course-->
                                        <!--Click vào ảnh cũng giống như click vào phần details -->
                                        <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                        <div class="author">
                                            <div class="author-image">    <!--ảnh mentor-->
                                                <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                                <a href="#">Mentor name</a>
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
                            <div class="col-lg-4 col-md-6 col-12">
                                <!-- Start Single Grid -->
                                <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                    <div class="image"> <!--ảnh course-->
                                        <!--Click vào ảnh cũng giống như click vào phần details -->
                                        <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                        <div class="author">
                                            <div class="author-image">    <!--ảnh mentor-->
                                                <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                                <a href="#">Mentor name</a>
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
                            <div class="col-lg-4 col-md-6 col-12">
                                <!-- Start Single Grid -->
                                <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                    <div class="image"> <!--ảnh course-->
                                        <!--Click vào ảnh cũng giống như click vào phần details -->
                                        <a href="#" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                        <div class="author">
                                            <div class="author-image">    <!--ảnh mentor-->
                                                <img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                                <a href="#">Mentor name</a>
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
                            <a href="#" class="btn btn-block btn-primary"> View All Course</a>
                        </div>
                        <div class="col-lg-5 col-md-5 col-12"></div>
                    </div>
                </div>
            </section>
        </section>
        
        <jsp:include page="Footer.jsp"></jsp:include>

        <!-- ========================= scroll-top ========================= -->
        <a href="#" class="scroll-top btn-hover">
            <i class="lni lni-chevron-up"></i>
        </a>

        <!-- ========================= JS here ========================= -->
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/wow.min.js"></script>
        <script src="../assets/js/tiny-slider.js"></script>
        <script src="../assets/js/glightbox.min.js"></script>
        <script src="../assets/js/main.js"></script>
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
