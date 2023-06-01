<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <!--casourel-->
        <!--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">-->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



        <!--Component-->
        <link
            href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
            rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

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
            <div class="space"></div>

            <div class="content container">
                <div class="row">
                    <div class="left-content col-md-8 ">
                        <div class="article_img">
                            <img src="https://www.bootdey.com/image/800x350/87CEFA/000000" alt="">
                        </div>
                        <div class="typeOfblog"><h6>React JS</h6></div>
                        <div class="title_article">
                            <h3> They Now Bade Farewell To The Kind But Unseen People</h3>
                        </div>
                        <div class="intro_author">
                            <div class="avatar_author" style="font-size: 2.9px;">
                                <img src="view/blog/assets/img/slider/img_ch.jpg" alt="">
                            </div>
                            <div class="name_author">
                                NamNH
                            </div>
                        </div>

                        <div class="article_content">
                            <div class="paraph_content"><p>Tôi làm chuyên môn về phân tích dữ liệu, chủ yếu là dùng phần mềm chuyên môn sâu và dùng rất nhiều SQL db, python. Hai món đó cũng đủ để dùng và phát triển. Tuy nhiên, xu hướng mới là webapp nên tôi phải cung cấp tool, giao diện người dùng... thông qua đó. Phải nói rất tốt cho công việc chung.</p>
                                <p>Nền tảng tôi dùng đã cung cấp sẵn các công cụ để xây dựng app dựa trên các widget có sẵn với khả năng tùy biến nhất định. Tuy nhiên, nhu cầu của người dùng và đặc thù công việc là vô cùng phong phú. Vì vậy, nền tảng cũng cung cấp cho SDK để phát triển widget để nhồi vào app. Yêu cầu dùng TypeScript và React. Mục tiêu là viết các widget có thể "nói chuyện" với nhau, truyền thông tin, propertíes qua lại lẫn nhau.</p>
                                <p>Tiếc là tài liệu và bài học về SDK của nền tảng hoặc quá sơ sài, mặc định người dùng biết hết rồi, hoặc rời rạc do bản thân React cũng đã thay dổi, updata...</p>
                                <p>Mình thấy hoa cả mắt khi nhìn thấy cấu trúc file pack trong một dự án, rồi file này nối sang file kia. Bản thân mình rất quen thuộc với việc viết module trên python, nhưng đúng là chạm vào thế giới JS thấy có vẻ phức tạp hơn.</p>
                                <p>Xem một số bài học của F8 thấy ít nhất là có giải thích cho người ta hiểu cái gì là cái gì, tại sao như vậy rồi nó làm việc ra sao. Quyết định đăng ký học để xem liệu mình có hiểu để viết được widget trên SDK nền tảng của mình ko.</p>
                                <p>Có tuổi rồi, học gì cũng ngại...</p>
                            </div>
                        </div>

                        <div class="nav tag-cloud" style="padding-top: 10px; padding-bottom: 10px;">
                            <a href="#">Tag1</a>
                            <a href="#">Tag1</a>
                            <a href="#">Tag1</a>
                            <a href="#">Tag1</a>
                            <a href="#">Tag1</a>
                            <a href="#">Tag1</a>
                            <a href="#">Tag1</a>
                        </div>

                    </div>
                    <div class="right-content col-md-4 ">
                        <div class="widget widget-latest-post">
                            <div class="widget-title">
                                <h3>Latest Post</h3>
                            </div>
                            <div class="widget-body">
                                <div class="latest-post-aside">
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

                <!--test casourel-->
                <section class="pt-5 pb-5">
                    <div class="container">
                        <div class="row justify-content-end">
                            <div class="col-6">
                                <h3 class="mb-3"> Các bài blog cùng Topic</h3>
                            </div>
                            <div class="col-6" style="
                                 position: relative;
                                 left: 40%;">
                                <a class="btn btn-primary mb-3 mr-1" href="#carouselExampleIndicators2" role="button"
                                   data-slide="prev">
                                    <i class="fa fa-arrow-left"></i>
                                </a>
                                <a class="btn btn-primary mb-3 " href="#carouselExampleIndicators2" role="button" data-slide="next">
                                    <i class="fa fa-arrow-right"></i>
                                </a>
                            </div>
                            <div class="col-12">
                                <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">

                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <div class="row">

                                                <div class="col-md-4 mb-3">
                                                    <div class="card">
                                                        <img class="img-fluid" alt="100%x280"
                                                             src="https://images.unsplash.com/photo-1532781914607-2031eca2f00d?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=7c625ea379640da3ef2e24f20df7ce8d">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Special title treatment</h4>
                                                            <p class="card-text">With supporting text below as a natural lead-in to
                                                                additional content.</p>

                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="col-md-4 mb-3">
                                                    <div class="card">
                                                        <img class="img-fluid" alt="100%x280"
                                                             src="https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=42b2d9ae6feb9c4ff98b9133addfb698">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Special title treatment</h4>
                                                            <p class="card-text">With supporting text below as a natural lead-in to
                                                                additional content.</p>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 mb-3">
                                                    <div class="card">
                                                        <img class="img-fluid" alt="100%x280"
                                                             src="https://images.unsplash.com/photo-1532712938310-34cb3982ef74?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=3d2e8a2039c06dd26db977fe6ac6186a">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Special title treatment</h4>
                                                            <p class="card-text">With supporting text below as a natural lead-in to
                                                                additional content.</p>

                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="row">

                                                <div class="col-md-4 mb-3">
                                                    <div class="card">
                                                        <img class="img-fluid" alt="100%x280"
                                                             src="https://images.unsplash.com/photo-1532771098148-525cefe10c23?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=3f317c1f7a16116dec454fbc267dd8e4">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Special title treatment</h4>
                                                            <p class="card-text">With supporting text below as a natural lead-in to
                                                                additional content.</p>

                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="col-md-4 mb-3">
                                                    <div class="card">
                                                        <img class="img-fluid" alt="100%x280"
                                                             src="https://images.unsplash.com/photo-1532715088550-62f09305f765?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=ebadb044b374504ef8e81bdec4d0e840">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Special title treatment</h4>
                                                            <p class="card-text">With supporting text below as a natural lead-in to
                                                                additional content.</p>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 mb-3">
                                                    <div class="card">
                                                        <img class="img-fluid" alt="100%x280"
                                                             src="https://images.unsplash.com/photo-1506197603052-3cc9c3a201bd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=0754ab085804ae8a3b562548e6b4aa2e">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Special title treatment</h4>
                                                            <p class="card-text">With supporting text below as a natural lead-in to
                                                                additional content.</p>

                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="row">

                                                <div class="col-md-4 mb-3">
                                                    <div class="card">
                                                        <img class="img-fluid" alt="100%x280"
                                                             src="https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=ee8417f0ea2a50d53a12665820b54e23">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Special title treatment</h4>
                                                            <p class="card-text">With supporting text below as a natural lead-in to
                                                                additional content.</p>

                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="col-md-4 mb-3">
                                                    <div class="card">
                                                        <img class="img-fluid" alt="100%x280"
                                                             src="https://images.unsplash.com/photo-1532777946373-b6783242f211?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=8ac55cf3a68785643998730839663129">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Special title treatment</h4>
                                                            <p class="card-text">With supporting text below as a natural lead-in to
                                                                additional content.</p>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 mb-3">
                                                    <div class="card">
                                                        <img class="img-fluid" alt="100%x280"
                                                             src="https://images.unsplash.com/photo-1532763303805-529d595877c5?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=5ee4fd5d19b40f93eadb21871757eda6">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Special title treatment</h4>
                                                            <p class="card-text">With supporting text below as a natural lead-in to
                                                                additional content.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

            </div>

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
