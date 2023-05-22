<%-- 
    Document   : activity
    Created on : May 19, 2023, 9:34:25 PM
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
        <jsp:include page="header.jsp"></jsp:include>
        
        <section class="items-grid section custom-padding">
            <div class="container">
                
                <div class="single-head">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Grid -->
                            <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                <div class="image">
                                    <a href="item-details.html" class="thumbnail"><img src="../assets/images/items-grid/img1.jpg" alt="#"></a>
                                    <div class="author">
                                        <div class="author-image">
                                            <a href="javascript:void(0)"><img src="../assets/images/items-grid/author-1.jpg" alt="#">
                                                <span>Smith jeko</span></a>
                                        </div>
                                        <p class="sale">For Sale</p>
                                    </div>
                                </div>
                                <div class="content">
                                    <div class="top-content">
                                        <a href="javascript:void(0)" class="tag">Mobile Phones</a>
                                        <h3 class="title">
                                            <a href="item-details.html">Apple Iphone X</a>
                                        </h3>
                                        <p class="update-time">Last Updated: 1 hours ago</p>
                                        <ul class="rating">
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><a href="javascript:void(0)">(35)</a></li>
                                        </ul>
                                        <ul class="info-list">
                                            <li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
                                            <li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Feb 18, 2023</a></li>
                                        </ul>
                                    </div>
                                    <div class="bottom-content">
                                        <p class="price">Start From: <span>$200.00</span></p>
                                        <a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Grid -->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Grid -->
                            <div class="single-grid wow fadeInUp" data-wow-delay=".4s">
                                <div class="image">
                                    <a href="item-details.html" class="thumbnail"><img src="../assets/images/items-grid/img2.jpg" alt="#"></a>
                                    <div class="author">
                                        <div class="author-image">
                                            <a href="javascript:void(0)"><img src="../assets/images/items-grid/author-2.jpg" alt="#">
                                                <span>Alex Jui</span></a>
                                        </div>
                                        <p class="sale">For Sale</p>
                                    </div>
                                </div>
                                <div class="content">
                                    <div class="top-content">
                                        <a href="javascript:void(0)" class="tag">Real Estate</a>
                                        <h3 class="title">
                                            <a href="item-details.html">Amazing Room for Rent</a>
                                        </h3>
                                        <p class="update-time">Last Updated: 2 hours ago</p>
                                        <ul class="rating">
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><a href="javascript:void(0)">(20)</a></li>
                                        </ul>
                                        <ul class="info-list">
                                            <li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Dallas, Washington</a></li>
                                            <li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Jan 7, 2023</a></li>
                                        </ul>
                                    </div>
                                    <div class="bottom-content">
                                        <p class="price">Start From: <span>$450.00</span></p>
                                        <a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Grid -->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Grid -->
                            <div class="single-grid wow fadeInUp" data-wow-delay=".6s">
                                <div class="image">
                                    <a href="item-details.html" class="thumbnail"><img src="../assets/images/items-grid/img3.jpg" alt="#"></a>
                                    <div class="author">
                                        <div class="author-image">
                                            <a href="javascript:void(0)"><img src="../assets/images/items-grid/author-3.jpg" alt="#">
                                                <span>Devid Milan</span></a>
                                        </div>
                                        <p class="sale">For Sale</p>
                                    </div>
                                    <p class="item-position"><i class="lni lni-bolt"></i> Featured</p>
                                </div>
                                <div class="content">
                                    <div class="top-content">
                                        <a href="javascript:void(0)" class="tag">Mobile Phones</a>
                                        <h3 class="title">
                                            <a href="item-details.html">Canon SX Powershot D-SLR</a>
                                        </h3>
                                        <p class="update-time">Last Updated: 3 hours ago</p>
                                        <ul class="rating">
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><a href="javascript:void(0)">(55)</a></li>
                                        </ul>
                                        <ul class="info-list">
                                            <li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
                                            <li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Mar 18, 2023</a></li>
                                        </ul>
                                    </div>
                                    <div class="bottom-content">
                                        <p class="price">Start From: <span>$700.00</span></p>
                                        <a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Grid -->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Grid -->
                            <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                <div class="image">
                                    <a href="item-details.html" class="thumbnail"><img src="../assets/images/items-grid/img4.jpg" alt="#"></a>
                                    <div class="author">
                                        <div class="author-image">
                                            <a href="javascript:void(0)"><img src="../assets/images/items-grid/author-4.jpg" alt="#">
                                                <span>Jesia Jully</span></a>
                                        </div>
                                        <p class="sale">For Sale</p>
                                    </div>
                                </div>
                                <div class="content">
                                    <div class="top-content">
                                        <a href="javascript:void(0)" class="tag">Vehicles</a>
                                        <h3 class="title">
                                            <a href="item-details.html">BMW 5 Series GT Car</a>
                                        </h3>
                                        <p class="update-time">Last Updated: 4 hours ago</p>
                                        <ul class="rating">
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><a href="javascript:void(0)">(35)</a></li>
                                        </ul>
                                        <ul class="info-list">
                                            <li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
                                            <li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Apr 12, 2023</a></li>
                                        </ul>
                                    </div>
                                    <div class="bottom-content">
                                        <p class="price">Start From: <span>$1000.00</span></p>
                                        <a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Grid -->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Grid -->
                            <div class="single-grid wow fadeInUp" data-wow-delay=".4s">
                                <div class="image">
                                    <a href="item-details.html" class="thumbnail"><img src="../assets/images/items-grid/img5.jpg" alt="#"></a>
                                    <div class="author">
                                        <div class="author-image">
                                            <a href="javascript:void(0)"><img src="../assets/images/items-grid/author-5.jpg" alt="#">
                                                <span>Thomas Deco</span></a>
                                        </div>
                                        <p class="sale">For Sale</p>
                                    </div>
                                    <p class="item-position"><i class="lni lni-bolt"></i> Featured</p>
                                </div>
                                <div class="content">
                                    <div class="top-content">
                                        <a href="javascript:void(0)" class="tag">Apple</a>
                                        <h3 class="title">
                                            <a href="item-details.html">Apple Macbook Pro 13 Inch</a>
                                        </h3>
                                        <p class="update-time">Last Updated: 5 hours ago</p>
                                        <ul class="rating">
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><a href="javascript:void(0)">(35)</a></li>
                                        </ul>
                                        <ul class="info-list">
                                            <li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Louis, Missouri, US</a></li>
                                            <li><a href="javascript:void(0)"><i class="lni lni-timer"></i> May 25, 2023</a></li>
                                        </ul>
                                    </div>
                                    <div class="bottom-content">
                                        <p class="price">Start From: <span>$550.00</span></p>
                                        <a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Grid -->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Grid -->
                            <div class="single-grid wow fadeInUp" data-wow-delay=".6s">
                                <div class="image">
                                    <a href="item-details.html" class="thumbnail"><img src="../assets/images/items-grid/img6.jpg" alt="#"></a>
                                    <div class="author">
                                        <div class="author-image">
                                            <a href="javascript:void(0)"><img src="../assets/images/items-grid/author-6.jpg" alt="#">
                                                <span>Jonson zack</span></a>
                                        </div>
                                        <p class="sale">For Sale</p>
                                    </div>
                                </div>
                                <div class="content">
                                    <div class="top-content">
                                        <a href="javascript:void(0)" class="tag">Restaurant</a>
                                        <h3 class="title">
                                            <a href="item-details.html">Cream Restaurant</a>
                                        </h3>
                                        <p class="update-time">Last Updated: 7 hours ago</p>
                                        <ul class="rating">
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><i class="lni lni-star-filled"></i></li>
                                            <li><a href="javascript:void(0)">(20)</a></li>
                                        </ul>
                                        <ul class="info-list">
                                            <li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
                                            <li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Feb 18, 2023</a></li>
                                        </ul>
                                    </div>
                                    <div class="bottom-content">
                                        <p class="price">Start From: <span>$500.00</span></p>
                                        <a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Grid -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        
        
        <jsp:include page="footer.jsp"></jsp:include>
        
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
