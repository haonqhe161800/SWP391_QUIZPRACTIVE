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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--FIXXED-->
        <link rel="stylesheet" href="view/blog/assets/blog-css/blogstyle.css"/>
        <!--favicon-->
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/logo/lloo.png" />


        <!-- ========================= CSS here ========================= -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

        <style>
            .content {
                padding-left: 0px;
                padding-right: 0px;
            }
            .paginationn {
                text-align: left;
                margin: 30px 0 0 0;
                display: flex;
            }
            okok li {
                border: 1px solid black;
                border-radius: 5px;
                color: black;
            }

        </style>
    </head>
    <body>
        <jsp:include page="/jspClient/Header.jsp" />

        <div class="space"></div>
        <div class="space"></div>


        <!-- slider -->
        <section class="page-section bg-light " id="sliders">
            <div id="demo" class="carousel slide" data-bs-ride="carousel">

                <!-- Indicators/dots -->
                <div class="carousel-indicators">
                    <c:forEach begin="0" var="bsl" end="${requestScope.totalSliderShow - 1}" > 
                        <button type="button" data-bs-target="#demo" data-bs-slide-to="${bsl}" class="${bsl == 0 ? "active" : ""}"></button>
                    </c:forEach>
                </div>

                <!-- The slideshow/carousel -->
                <!-- style="left: 20%; width: 60%;" -->
                <div class="carousel-inner">
                    <c:forEach var="ss" items="${sessionScope.listslider}">
                        <div class="carousel-item ${ss.slider_id == 1 ? "active" : ""}">
                            <a href="#" style="width: 100%;"><img src="view/blog/assets/slider/${ss.url}" alt="" class="d-block w-100"></a>
                        </div>
                    </c:forEach>
                </div>

                <!-- Left and right controls/icons -->
                <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </button>
            </div>
        </section>
        <!-- end slider -->

        <div class="content container">
            <div class="heading_intro col-sm-10 mt-sm-3">
                <!-- post search box -->
                <div class="row">
                    <div class="col-sm-4 col-lg-6 pt-3">
                        <form action="">
                            <div class="input-group">
                                <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search"
                                       aria-describedby="search-addon" />
                                <button type="submit" class="btn btn-outline-dark">search</button>
                            </div>
                        </form>
                    </div>
                    <div class="col-sm-8 col-lg-6 pt-3">
                        <select class="form-select" aria-label=".form-select-sm example" style="width: 57%;">
                            <option selected>Open this select menu</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                </div>

            </div>
            <div class="row">
                <%
            DAOBlog bdb = new DAOBlog();
            int total = bdb.countBlog();
            int start = 0; int recordpage = 3; int pageNo = 0;
                int pno = request.getParameter("page") == null ?1:Integer.parseInt(request.getParameter("page"));
                pageNo = pno;
                start = pno*recordpage;
                %>

                <%
                     DAOPost pdb = new DAOPost();
                     DAOMarketer mdb = new DAOMarketer();
                     DAOSubject sdb = new DAOSubject();
                     List<Post> listpost = pdb.listPostfollowPage(start, recordpage);
                    
                %>

                <div class="blog_list col-sm-8 mt-sm-7">
                    <% for(Post p : listpost){%>
                    <%
                         AccountMarketer am = mdb.getById(p.getMarketer_id());
                         Blog b = bdb.getById(p.getBlog_id());
                         Subject s = sdb.getById(b.getSubject_id());
                    %>
                    <div class="blog_item">
                        <div class="intro_author">
                            <div class="avatar_author" style="font-size: 2.9px;">
                                <img src="view/avatar/<%=am.getImage()%>" alt="">
                            </div>
                            <div class="name_author">
                                <%=am.getDisplay_name()%>
                            </div>
                        </div>
                        <div class="content_blog_item">
                            <h2 class="title_blog"><a href="cbd?pod=<%=p.getPost_id()%>"><%=b.getBlog_name()%></a></h2>
                            <p class="sub_paraph"><%=p.getShort_content()%></p>
                        </div>
                        <div class="blog_infor">
                            <div class="blog_tag"><a href=""><%=s.getSubject_name()%></a></div>
                            <div class="create_at"><span><%=p.getPosted_date()%></span></div>
                        </div>
                    </div>
                    <%}%>
                </div>
                <div class="blog_right col-sm-4 mt-sm-7">
                    <%
                    Post p1 = pdb.getTop1Post();
                    Blog bb = bdb.getById(p1.getBlog_id());
                    AccountMarketer amm = mdb.getById(p1.getMarketer_id());
                    %>
                    <div class="widget widget-latest-post">
                        <div class="widget-title">
                            <h3>Latest Post</h3>
                        </div>
                        <div class="widget-body">
                            <div class="latest-post-aside media">
                                <div class="lpa-right">
                                    <a href="#" style="width: 100%">
                                        <img src="https://th.bing.com/th/id/R.acc7ec177c5f10a7fe314d2d92e8a395?rik=Ar%2fHhJHCO2Zz4w&pid=ImgRaw&r=0"
                                             title="" alt="">
                                    </a>
                                </div>
                                <div class="lpa-left media-body">
                                    <div class="lpa-title">
                                        <h5><a href="#"><%=bb.getBlog_name()%></a></h5>
                                    </div>
                                    <div class="lpa-meta">
                                        <a class="name" href="#">
                                            <%=amm.getDisplay_name()%>
                                        </a>
                                        <%=p1.getPosted_date()%>
                                    </div>
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

            <div class="transfor_page row-cols-1 mt-sm-3  mb-sm-3">
                <nav aria-label="Page navigation example">
                    <ul class="okok paginationn justify-content-center">
                        <li class="page-item"><a class="page-link <%=(start == 0) ? "diasbled":""%>" href="">Previous</a></li>
                            <% for(int i = 0; i < total/recordpage; i++){%>
                        <li class="page-item"><span class="page-link"><a href="cbl?page=<%=i%>"><%=i+1%></a></span></li>
                                <%}%>
                        <li class="page-item"><a class="page-link <%=(start + recordpage > total) ? "diasbled":"" %>" href="">Next</a></li>
                    </ul>
                </nav>
            </div>
        </div>

        <jsp:include page="/jspClient/Footer.jsp" />
        <!--/ End Footer Area -->
        <!-- ========================= scroll-top ========================= -->


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
