<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <title>JSP Page</title>
        <!--FIXXED-->
        <link rel="stylesheet" href="view/blog/assets/blog-css/blogstyle.css"/>
        <link rel="stylesheet" href="themify-icons-font/themify-icons/themify-icons.css"/>
        <!--favicon-->
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/logo/lloo.png" />

        <!--END FIXXED-->

        <!--Component-->

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

        <style>
            .content {
                padding-left: 0px;
                padding-right: 0px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="/jspClient/Header.jsp" ></jsp:include>

        <div class="slider">

        </div>
        <div class="content container">
            <div class="heading_intro row-cols-1 col-sm-10 mt-sm-3">
                <div class="parapph_title">
                    <h3>Bài viết nổi bật</h3>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua.</p>
            </div>
            <div class="row">
                <div class="blog_list col-sm-8 mt-sm-7">
                    <div class="blog_item">
                        <div class="intro_author">
                            <div class="avatar_author" style="font-size: 2.9px;">
                                <img src="view/blog/assets/img/slider/img_ch.jpg" alt="">
                            </div>
                            <div class="name_author">
                                NamNH
                            </div>
                        </div>
                        <div class="content_blog_item">
                            <h2 class="title_blog">Ngành gì đang hot hiện nay? Top ngành nghề dự báo trở thành xu thế</h2>
                            <p class="sub_paraph">Hí anh em! Vào vấn đề luôn, trong thời gian mình có quá nhiều thời gian
                                rỗi
                                nên
                                mình đã bỏ 1 ít thời gian và tiền đi kiểm chứng và...</p>
                        </div>
                        <div class="blog_infor">
                            <div class="blog_tag"><a href="">React JS</a></div>
                            <div class="create_at"><span>một tháng trước</span></div>
                        </div>
                    </div>

                    <div class="blog_item">
                        <div class="intro_author">
                            <div class="avatar_author" style="font-size: 2.9px;">
                                <img src="view/blog/assets/img/slider/img_ch.jpg" alt="">
                            </div>
                            <div class="name_author">
                                NamNH
                            </div>
                        </div>
                        <div class="content_blog_item">
                            <h2 class="title_blog">Ngành gì đang hot hiện nay? Top ngành nghề dự báo trở thành xu thế</h2>
                            <p class="sub_paraph">Hí anh em! Vào vấn đề luôn, trong thời gian mình có quá nhiều thời gian
                                rỗi
                                nên
                                mình đã bỏ 1 ít thời gian và tiền đi kiểm chứng và...</p>
                        </div>
                        <div class="blog_infor">
                            <div class="blog_tag"><a href="">React JS</a></div>
                            <div class="create_at"><span>một tháng trước</span></div>
                        </div>
                    </div>

                    <div class="blog_item">
                        <div class="intro_author">
                            <div class="avatar_author" style="font-size: 2.9px;">
                                <img src="view/blog/assets/img/slider/img_ch.jpg" alt="">
                            </div>
                            <div class="name_author">
                                NamNH
                            </div>
                        </div>
                        <div class="content_blog_item">
                            <h2 class="title_blog">Ngành gì đang hot hiện nay? Top ngành nghề dự báo trở thành xu thế</h2>
                            <p class="sub_paraph">Hí anh em! Vào vấn đề luôn, trong thời gian mình có quá nhiều thời gian
                                rỗi
                                nên
                                mình đã bỏ 1 ít thời gian và tiền đi kiểm chứng và...</p>
                        </div>
                        <div class="blog_infor">
                            <div class="blog_tag"><a href="">React JS</a></div>
                            <div class="create_at"><span>một tháng trước</span></div>
                        </div>
                    </div>

                </div>
                <div class="blog_right col-sm-4 mt-sm-7">

                    <div class="widget widget-latest-post">
                        <div class="widget-title">
                            <h3>Latest Post</h3>
                        </div>
                        <div class="widget-body">
                            <div class="latest-post-aside media">
                                <div class="lpa-left media-body">
                                    <div class="lpa-title">
                                        <h5><a href="#">Prevent 75% of visitors from google analytics</a></h5>
                                    </div>
                                    <div class="lpa-meta">
                                        <a class="name" href="#">
                                            Rachel Roth
                                        </a>
                                        <a class="date" href="#">
                                            26 FEB 2020
                                        </a>
                                    </div>
                                </div>
                                <div class="lpa-right">
                                    <a href="#">
                                        <img src="https://www.bootdey.com/image/400x200/FFA07A/000000" title="" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="widget widget-tags">
                        <div class="widget-title">
                            <h3>Latest Tags</h3>
                        </div>
                        <div class="widget-body">
                            <div class="nav tag-cloud">
                                <a href="#">Design</a>
                                <a href="#">Development</a>
                                <a href="#">Travel</a>
                                <a href="#">Web Design</a>
                                <a href="#">Marketing</a>
                                <a href="#">Research</a>
                                <a href="#">Managment</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="transfor_page col-sm-10 mt-sm-3">
                <ul class="paginationnn">
                    <li><i class="ti-hand-point-left"></i></li>
                    <li>  <a href="#">1</a> </li>
                    <li>  <a href="#">2</a> </li>
                    <li>  <a href="#">3</a> </li>
                    <li><i class="ti-hand-point-right"></i></li>    
                </ul>
            </div>

        </div>

        <jsp:include page="/jspClient/Footer.jsp" />
      <!--/ End Footer Area -->
        <!-- ========================= scroll-top ========================= -->
        <a href="#" class="scroll-top btn-hover">
            <i class="lni lni-chevron-up"></i>
        </a>

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
