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
                        <%
                           DAOSubject sdb = new DAOSubject();
                           DAOPost pdb = new DAOPost();
                           DAOBlog bdb = new DAOBlog();
                           DAOMarketer mdb = new DAOMarketer();
                           Post pp = (Post) request.getAttribute("uniqueblog");
                           
                           if(pp != null){
                           Blog b = bdb.getById(pp.getBlog_id());
                           Subject s = sdb.getById(b.getSubject_id());
                           AccountMarketer am = mdb.getById(pp.getMarketer_id());
                        %>
                        <div class="article_img">
                            <img src="https://www.bootdey.com/image/800x350/87CEFA/000000" alt="">
                        </div>
                        <div class="typeOfblog"><h6><%=s.getSubject_name()%></h6></div>
                        <div class="title_article">
                            <h3><%=b.getBlog_name()%></h3>
                        </div>
                         <div class="intro_author">
                            <div class="avatar_author" style="font-size: 2.9px;">
                                <img src="view/avatar/<%=am.getImage()%>" alt="">
                            </div>
                            <div class="name_author">
                                <%=am.getDisplay_name()%>
                            </div>
                        </div>
                        <div class="article_content">
                            <div class="paraph_content">
                                <p><%=pp.getContent()%></p>
                            </div>
                        </div>
                        <%}%>
<!--                      
                        <div class="nav tag-cloud" style="padding-top: 10px; padding-bottom: 10px;">
                            <a href="#">Tag1</a>
                            <a href="#">Tag1</a>
                            <a href="#">Tag1</a>
                            <a href="#">Tag1</a>
                            <a href="#">Tag1</a>
                            <a href="#">Tag1</a>
                            <a href="#">Tag1</a>
                        </div>-->

                    </div>
                    <div class="right-content col-md-4 ">
                        <div class="widget widget-latest-post">
                            <div class="widget-title">
                                <h3>Latest Post</h3>
                            </div>
                            <div class="widget-body">
                            <%
                             Post p1 = pdb.getTop1Post();
                             Blog bb = bdb.getById(p1.getBlog_id());
                             AccountMarketer amm = mdb.getById(p1.getMarketer_id());
                            %>
                            <div class="latest-post-aside">
                                <div class="lpa-left media-body">
                                    <div class="lpa-title">
                                        <h5><a href="cbd?pod=<%=p1.getPost_id()%>"><%=bb.getBlog_name()%></a></h5>
                                    </div>
                                    <div class="lpa-meta">
                                        <a class="name" href="#">
                                            <%=amm.getDisplay_name()%>
                                        </a>
                                        <a class="date" href="#">
                                             <%=p1.getPosted_date()%>
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
                            <h3>Tags</h3>
                        </div>
                        <div class="widget-body">
                            <div class="nav tag-cloud">
                                <%
                                  
                                  List<Subject> listsubject = sdb.getAll();
                                  for(Subject ss : listsubject){
                                %>
                                <a href="#"><%=ss.getSubject_name()%></a>
                                <% }%>
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
                            <h3 class="mb-3">Some other posts</h3>
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
