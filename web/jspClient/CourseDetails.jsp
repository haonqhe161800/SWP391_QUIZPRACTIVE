<%-- 
    Document   : CourseDetails
    Created on : May 24, 2023, 10:00:39 PM
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
        ResultSet rsCourse = (ResultSet) request.getAttribute("rsCourse");
        int count = (int) request.getAttribute("count");
        int errol = (int) request.getAttribute("errol");
        %>

        <div style="margin-bottom: 150px ">
            <jsp:include page="Header.jsp"></jsp:include>
            </div>


            <div class="container table">
                <div class="row"> 
                <%if(rsCourse.next()) {%>
                <div class="col-md-3">
                    <img style="width:100%; height: 100%" src="<%=rsCourse.getString(6)%>">
                </div>
                <div class="col-md-8">
                    <div class="name"> <h2><%=rsCourse.getString(4)%></h2> </div>
                    <div class="subject"> <p><strong>Subject: </strong><%=rsCourse.getString(12)%> </p> </div>    
                    <div class="details"> <p><%=rsCourse.getString(5)%></p></div>    
                    <div class="quantity-q"> <p><strong>Số lượng câu hỏi:</strong> <%=count%></p></div>
                    <div>
                        <ul class="rating">
                            <li><strong>Số người tham gia:</strong> (<%=rsCourse.getInt(8)%>)</li>
                        </ul>
                    </div>
                    <div>
                        <ul class="info-list">
                            <li><i class="lni lni-timer"></i><strong> Ngày đăng khóa học:</strong> <%=rsCourse.getString(9)%></li>
                        </ul>
                    </div>
                    <div> <p class="update-time"><i class="lni lni-timer"></i><strong>   Ngày update gần nhất:</strong> <%=rsCourse.getString(9)%></p> </div>
                    <div style="display: flex">
                        <%if((errol == 0) || (session.getAttribute("accountUser") == null && session.getAttribute("accountMarketer") == null && session.getAttribute("accountMentor") == null)) {%>   
                            <div class="bottom-content" style="margin-right: 20px">
                                <a href="CourseController?service=errol&id=<%=rsCourse.getInt(1)%>" class="btn btn-block btn-primary">Tham gia khóa học</a>
                            </div>
                        <%}%>
                        <%if(errol != 0) {%>   
                            <div class="bottom-content">
                                <a href="CourseController?service=practice&id=<%=rsCourse.getInt(1)%>" class="btn btn-block btn-primary">Practice</a>
                            </div>
                        <%}%>
                    </div>
                </div>
                <%}%>
            </div>
        </div>

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
