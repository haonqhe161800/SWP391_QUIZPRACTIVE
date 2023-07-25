<%-- 
    Document   : HomePage
    Created on : May 19, 2023, 3:15:45 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.DateFormat, java.text.ParseException, java.text.SimpleDateFormat, java.util.Date, java.time.format.DateTimeFormatter, java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter, java.time.LocalDateTime" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <title>Quiz Practice</title>
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />
        <!-- Place favicon.ico in the root directory -->

        <!--Link icon-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-pfMvQ9Z7V5BJI7QVJjwfnYGAKBtUxjlh2R8lG4b/ZzWWTd1kApqFw3L8eB0jo+0gQvO4+6N0x5sqi/qXZMvG1Q==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Web Font -->
        <link

            href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
            rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

        <!-- ========================= CSS here ========================= -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/css/LineIcons.2.0.css" />
        <link rel="stylesheet" href="assets/css/animate.css" />
        <link rel="stylesheet" href="assets/css/tiny-slider.css" />
        <link rel="stylesheet" href="assets/css/glightbox.min.css" />
        <link rel="stylesheet" href="assets/css/main.css" />

        <!--popup of Marketer-->
        <link rel="stylesheet" href="./assets/css/newcss.css"/>
        <!-- fontanswer icons -->
        <script src="https://kit.fontawesome.com/fe000f9b2a.js" crossorigin="anonymous"></script>

        <!-- jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    </head>

    <body>


        <!--     Start Header Area 
        <jsp:include page="Header.jsp"></jsp:include>
         End Header Area -->

        <%
            ResultSet rsMentorInfo = (ResultSet)request.getAttribute("rsMentorInfo");
            ResultSet rsRelatedMentor = (ResultSet)request.getAttribute("rsRelatedMentor");
            int numCoursesPosted = (int)request.getAttribute("numCoursesPosted");
            int quantityPati = (int)request.getAttribute("quantityPati");
            ResultSet rsRelatedCourse = (ResultSet) request.getAttribute("rsRelatedCourse");

        %>    
        <section class="items-grid section custom-padding">
            <% if (rsMentorInfo.next()) { %>
            <section class="" style="background-color: #FCFAFA; margin-left: 0">
                <div class="row d-flex h-100">
                    <!--main mentor-->
                    <div class="col col-md-7 col-lg-7 col-xl-7">
                        <h3 class="text-center" style="margin-bottom: 20px">Information of Mentor</h3>
                        <div class="card" style="border-radius: 15px;">
                            <div class="card-body p-4">
                                <div class="d-flex text-black">
                                    <div class="flex-shrink-0">
                                        <!--mentor image-->
                                        <img src="<%=rsMentorInfo.getString(6)%>"
                                             alt="Generic placeholder image" class="img-fluid"
                                             onerror="this.src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WsN6dLPa3HAHXNM3Pgy2k1TIe5c80AJ3sg&usqp=CAU'"
                                             style="width: 180px; border-radius: 10px;">
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h5 class="mb-1"><%=rsMentorInfo.getString(7)%></h5>
                                        <p class="mb-2 pb-1" style="color: #2b2a2a;"><%=rsMentorInfo.getString(11) != null ? rsMentorInfo.getString(11) : "Senior Mentor"%></p>
                                        <p style="margin-bottom: 10px"><i class="fa-solid fa-envelope"></i><%=rsMentorInfo.getString(2)%></p>
                                        <div class="d-flex justify-content-start rounded-3 p-2 mb-2"
                                             style="background-color: #efefef;">
                                            <div class="px-4">
                                                <p class="small text-muted mb-1"> <strong>Courses</strong> </p>
                                                <p class="mb-0 text-center"><%=numCoursesPosted%></p>
                                            </div>
                                            <div class="px-4">
                                                <p class="small text-muted mb-1"> <strong>Users Joined</strong> </p>
                                                <p class="mb-0 text-center"><%=quantityPati%></p>
                                            </div>
                                            <div class="px-5">
                                                <p class="small text-muted mb-1"> <strong>Address</strong> </p>
                                                <p class="mb-0 text-center"><%=rsMentorInfo.getString(9)%></p>
                                            </div>
                                            <div class="px-5">
                                                <p class="small text-muted mb-1"> <strong>Birthday</strong> </p>
                                                <p class="mb-0 text-center"><%=rsMentorInfo.getString(10)%></p>
                                            </div>
                                            <div class="px-4">
                                                <p class="small text-muted mb-1"> <strong>Specialize</strong> </p>
                                                <p class="mb-0 text-center"><%=rsMentorInfo.getString(14) != null ? rsMentorInfo.getString(14) : ""%></p>
                                            </div>
                                            <!--<div>
                                              <p class="small text-muted mb-1">Rating</p>
                                              <p class="mb-0">8.5</p>
                                            </div>-->
                                        </div>
                                        <div class="d-flex pt-1 desc d-flex justify-content-start rounded-3 p-2 mb-2"
                                             style="background-color: #efefef;">
                                            <p><strong>Description:</strong> <%=rsMentorInfo.getString(4) != null ? rsMentorInfo.getString(4) : "Senior Mentor"%> </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--related mentor-->
                    <%if(rsRelatedMentor != null) {%>
                    <div class="col col-md-5 col-lg-5 col-xl-5">
                        <h3 class="text-center" style="margin-bottom: 20px">Others</h3>
                        <div class="card" style="border-radius: 15px;">
                            <div class="card-body p-4">
                                <% while (rsRelatedMentor.next()) { %>
                                <div style="border-radius: 15px; background-color: #FFFAFA; height: 200px; margin-bottom: 10px">
                                    <div class="d-flex text-black table" style="">
                                        <div class="flex-shrink-0">
                                            <img src="<%=rsRelatedMentor.getString(6)%>" alt="Generic placeholder image" class="img-fluid" onerror="this.src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WsN6dLPa3HAHXNM3Pgy2k1TIe5c80AJ3sg&amp;usqp=CAU'" style="width: 180px; border-radius: 10px; align-content: center; justify-items: center; justify-content: center; margin: 5px 0 0 5px">
                                        </div>
                                        <div class="flex-grow-1 ms-3" style="margin-top: 5px">
                                            <h5 class="mb-1"><%=rsRelatedMentor.getString(7)%></h5>
                                            <p class="mb-2 pb-1" style="color: #2b2a2a;"><%=rsRelatedMentor.getString(11) != null ? rsRelatedMentor.getString(11) : "Senior Mentor"%></p>
                                            <div class="d-flex pt-1 desc d-flex justify-content-start rounded-3 p-2 mb-2" style="background-color: #efefef;">
                                                <p><strong>Description:</strong> <%=rsRelatedMentor.getString(4) != null ? rsRelatedMentor.getString(4) : "Senior Mentor"%> </p>
                                            </div>
                                            <div class="d-flex pt-1" style="margin-bottom: 10px">
                                                <button type="button" style="width: 200px" class="btn btn-outline-primary">
                                                    <a class="text-dark" href="Mentor?service=info&mentor_id=<%=rsRelatedMentor.getInt(1)%>">Details</a>
                                                </button>
                                                <!--<button type="button" class="btn btn-primary flex-grow-1">Follow</button>-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <% } %>
                            </div>
                        </div>
                    </div>
                    <%}%>
                </div>
            </section>
            <% } %>
        </section>




        <%if (rsRelatedCourse != null) {%>
        <!--Related course-->
        <section class="items-grid section custom-padding">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h2 class="wow fadeInUp" data-wow-delay=".4s">Related Course</h2>
                        </div>
                    </div>
                </div>

                <div class="single-head">
                    <div class="row">
                        <% while(rsRelatedCourse.next()) { %>

                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                <div class="image">
                                    <a href="CourseController?service=details&course_id=<%=rsRelatedCourse.getInt(1)%>" class="thumbnail">
                                        <img height="218px" src="<%=rsRelatedCourse.getString(2)%>" alt="#">
                                    </a>
                                    <div class="author">
                                        <%if (session.getAttribute("accountMentor") == null) {%>
                                        <a href="CourseController?service=errol&id=<%=rsRelatedCourse.getInt(1)%>" class="sale"> Join to course</a>
                                        <% }%>
                                    </div>
                                </div>
                                <div class="content">
                                    <div class="top-content">
                                        <a href="SubjectController?service=details&subject_id=<%=rsRelatedCourse.getInt(10)%>">
                                            <p style="color: #F9A7A7; font-size: 18px; font-weight: 500">Subject: <%=rsRelatedCourse.getString(6)%></p>
                                        </a>
                                        <h4 class="title" style="height: 50px"><%=rsRelatedCourse.getString(5)%>  </h4>
                                        <p class="update-time"><i class="lni lni-timer"></i> Last update date:  <%=(rsRelatedCourse.getString(9) != null ? rsRelatedCourse.getString(9) : rsRelatedCourse.getString(7))%></p>
                                        <ul class="rating">
                                            <li>Number of participants (<%=rsRelatedCourse.getInt(8)%>)</li>
                                        </ul>
                                        <ul class="info-list">
                                            <li style="display: block; width: 100%"><i class="lni lni-timer"></i> Course posting date: <%=rsRelatedCourse.getString(7)%></li>
                                        </ul>
                                    </div>
                                    <div class="bottom-content">
                                        <a href="CourseController?service=details&course_id=<%=rsRelatedCourse.getInt(1)%>" class="btn btn-block btn-primary">Details</a>
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