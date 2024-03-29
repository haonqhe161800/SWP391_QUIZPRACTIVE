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
        
        <link rel="stylesheet" href="./assets/css/newcss.css"/>
        <!-- fontanswer icons -->
        <script src="https://kit.fontawesome.com/fe000f9b2a.js" crossorigin="anonymous"></script>

        <!-- jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

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
                    <div class="quantity-q"> <p><strong>Number of questions:</strong> <%=count%></p></div>
                    <div>
                        <ul class="rating">
                            <li><strong>Number of participants:</strong> (<%=rsCourse.getInt(8)%>)</li>
                        </ul>
                    </div>
                    <div>
                        <ul class="info-list">
                            <li><i class="lni lni-timer"></i><strong> Course posting date:</strong> <%=rsCourse.getString(9)%></li>
                        </ul>
                    </div>
                    <div> <p class="update-time"><i class="lni lni-timer"></i><strong>   Last update date:</strong> <%=rsCourse.getString(9)%></p> </div>
                    <div style="display: flex">
                        <%if(errol == 0 && session.getAttribute("accountMentor") != null) {%>
                            <div class="bottom-content" style="margin-right: 20px">
                            </div>
                        <%} else if((errol == 0) || (session.getAttribute("accountUser") == null && session.getAttribute("accountMarketer") == null && session.getAttribute("accountMentor") == null)) {%>   
                            <div class="bottom-content" style="margin-right: 20px">
                                <a href="CourseController?service=errol&id=<%=rsCourse.getInt(1)%>" class="btn btn-block btn-primary">Join to course</a>
                            </div>
                        <%}%>
                        <%if(errol != 0) {%>   
                            <div class="bottom-content">
                                <a href="CourseController?service=learning&id=<%=rsCourse.getInt(1)%>" class="btn btn-block btn-primary">Learn</a>
                            </div>
                        <%}%>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
            
            
        <% ResultSet rsRelCourse = (ResultSet) request.getAttribute("rsRelCourse");%>
        <%if (rsRelCourse != null) {%>
            <!--Related course-->
            <section class="items-grid section custom-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-title">
                                <h2 class="wow fadeInUp" data-wow-delay=".4s">Realated Course</h2>
                            </div>
                        </div>
                    </div>

                    <div class="single-head">
                        <div class="row">
                            <%  while(rsRelCourse.next()) { %>
                            <div class="col-lg-4 col-md-6 col-12">
                                <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                    <div class="image">
                                        <a href="CourseController?service=details&course_id=<%=rsRelCourse.getInt(1)%>" class="thumbnail">
                                            <img height="218px" src="<%=rsRelCourse.getString(2)%>" alt="#">
                                        </a>
                                        <div class="author">
                                            <div class="author-image">
                                                <a href="Mentor?service=info&mentor_id=<%=rsRelCourse.getInt(11)%>">
                                                    <img src="<%=rsRelCourse.getString(4)%>" onerror="this.src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WsN6dLPa3HAHXNM3Pgy2k1TIe5c80AJ3sg&usqp=CAU'" alt="#">
                                                <span><%=rsRelCourse.getString(3) != null ? rsRelCourse.getString(3) : ""%></span>
                                                </a>
                                            </div>
                                            <%if (session.getAttribute("accountMentor") == null) {%>
                                                <a href="CourseController?service=errol&id=<%=rsRelCourse.getInt(1)%>" class="sale"> Join to course</a>
                                            <% }%>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <div class="top-content">
                                            <p><%=rsRelCourse.getString(5)%></p>
                                            <a href="SubjectController?service=details&subject_id=<%=rsRelCourse.getInt(10)%>">
                                                <h4 class="title">Subject: <%=rsRelCourse.getString(6)%>  </h4>
                                            </a>
                                            <p class="update-time"><i class="lni lni-timer"></i> Last update date:  <%= (rsRelCourse.getString(9) != null ? rsRelCourse.getString(9) : rsRelCourse.getString(7))%></p>
                                            <ul class="rating">
                                                <li>Number of participants (<%=rsRelCourse.getInt(8)%>)</li>
                                            </ul>
                                            <ul class="info-list">
                                                <li style="display: block; width: 100%"><i class="lni lni-timer"></i> Course posting date: <%=rsRelCourse.getString(7)%></li>
                                            </ul>
                                        </div>
                                        <div class="bottom-content">
                                            <a href="CourseController?service=details&course_id=<%=rsCourse.getInt(1)%>" class="btn btn-block btn-primary">Details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% } %>
                        </div>
                    </div>
                </div>
            </section> 
                        <% } %>

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
