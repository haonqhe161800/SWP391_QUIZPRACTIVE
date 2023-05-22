<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="blog-css/blogstyle.css"/>
        <link rel="stylesheet" href="../themify-icons-font/themify-icons/themify-icons.css"/>
         <style>
        .content {
            padding-left: 0px;
            padding-right: 0px;
                 }
    </style>
    </head>
     <body>
            <div class="header">
        <div class="logo">
            <h2>quizpratice</h2>
        </div>
        <!-- start nav -->
        <ul class="nav">
            <li><a href="">Link 1</a></li>
            <li><a href="">Link 2</a></li>
            <li><a href="">Link 3</a></li>
            <li><a href="">Link 4</a></li>
        </ul>
        <!-- end nav -->
        <!-- search bar -->
        <form action="">
            <div class="search_bar">
                <input type="text" placeholder="Searching" name="key">
            </div>
            <div class="btn-search">
                <button type="submit" class=""><i class="ti-search"></i></button>
            </div>

        </form>
    </div>
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
                            <img src="slider/img_ch.jpg" alt="">
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
                            <img src="slider/img_ch.jpg" alt="">
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
                            <img src="slider/img_ch.jpg" alt="">
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

        <div class="transfor_page row-cols-1 col-sm-10 mt-sm-3">
            <ul class="pagination">
                <li><i class="ti-hand-point-left"></i></li>
                    <li>  <a href="#">1</a> </li>
                    <li>  <a href="#">2</a> </li>
                    <li>  <a href="#">3</a> </li>
                    <li><i class="ti-hand-point-right"></i></li>    
            </ul>
        </div>
    </div>
    <div class="footer"></div>
    </body>
</html>
