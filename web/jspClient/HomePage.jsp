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


    <!-- Start Hero Area -->
    <section class="hero-area overlay">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1 col-md-12 col-12">
                    <div class="hero-text text-center">
                        <!-- Start Hero Text -->
                        <div class="section-heading">
                            <h2 class="wow fadeInUp" data-wow-delay=".3s">Welcome to Practice Quiz Web</h2>
                            <p class="wow fadeInUp" data-wow-delay=".5s">Let's learn and progress together</p>
                        </div>
                        <!-- End Search Form -->
                        <!-- Start Search Form -->
                        <form method="post" action="HomeController">
                            <input type="hidden" name="service" value="search">
                            
                            <div class="search-form wow fadeInUp" data-wow-delay=".7s">
                                <div class="row">
                                    <div class="col-lg-7 col-md-7 col-12 p-0">
                                        <div class="search-input">
                                            <label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
                                            <input type="text" value="${text_search}" name="keyword" id="keyword" placeholder="Find something ...">
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-12 p-0">
                                        <div class="search-input">
                                            <label for="category"><i class="lni lni-grid-alt theme-color"></i></label>
                                            <select name="category" id="category">
                                                <option value="category" selected disabled>Categories</option>
                                                <option value="mentor" name="mentor">Mentor</option>
                                                <option value="blog" name="blog">Post</option>
                                                <option value="course" name="course">Course</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-12 p-0">
                                        <div class="search-btn button">
                                            <button class="btn"><i class="lni lni-search-alt"></i> Search</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <!-- End Search Form -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Hero Area -->

    
    <!-- Start Categories Area -->
    
    <%ResultSet rsSubject = (ResultSet)request.getAttribute("rsSubject");%>
    <!-- list subject -->
        <section class="categories">
            <div class="container">
                <div class="cat-inner">
                    <div class="row">
                        <div class="col-12 p-0">
                            <div class="category-slider">
                                <% while(rsSubject.next()) { %>
                                <a href="SubjectController?service=details&subject_id=<%=rsSubject.getInt(2)%>" class="single-cat">
                                    <div class="icon">
                                        <img src="<%=rsSubject.getString(3)%>"alt="#">
                                    </div>
                                    <h3><%=rsSubject.getString(1)%></h3>
                                    <h5 class="total"><%=rsSubject.getInt(4)%></h5>
                                </a>
                                <%} %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End list subject -->
<%if(request.getAttribute("type") == null) {%>
    <%
        ResultSet rsCourse = (ResultSet)request.getAttribute("rsCourse");
        ResultSet rsMentor = (ResultSet)request.getAttribute("rsMentor");
        ResultSet rsPost = (ResultSet)request.getAttribute("rsPost");
    %>

    

    
    <!-- List Course -->
    <section class="items-grid section custom-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">Latest Course</h2>
                    </div>
                </div>
            </div>
            
            <div class="single-head">
                <div class="row">
                    <%  int count = 0; 
                        while(rsCourse.next() && count < 6) {
                    %>
                        
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image">
                                <a href="CourseController?service=details&course_id=<%=rsCourse.getInt(1)%>" class="thumbnail">
                                    <img height="218px" src="<%=rsCourse.getString(2)%>" alt="#">
                                </a>
                                <div class="author">
                                    <div class="author-image">
                                        <a href="MentorInfor?mentor_id=<%=rsCourse.getInt(11)%>">
                                            <img src="<%=rsCourse.getString(4)%>" onerror="this.src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WsN6dLPa3HAHXNM3Pgy2k1TIe5c80AJ3sg&usqp=CAU'" alt="#">
                                        <span><%=rsCourse.getString(3) != null ? rsCourse.getString(3) : ""%></span>
                                        </a>
                                    </div>
                                    <%if (session.getAttribute("accountMentor") == null) {%>
                                        <a href="CourseController?service=errol&id=<%=rsCourse.getInt(1)%>" class="sale"> Join to course</a>
                                    <% }%>
                                </div>
                            </div>
                            <div class="content">
                                <div class="top-content">
                                    <a href="SubjectController?service=details&subject_id=<%=rsCourse.getInt(10)%>">
                                        <p style="color: #F9A7A7; font-size: 18px; font-weight: 500">Subject: <%=rsCourse.getString(6)%></p>
                                    </a>
                                    <h4 class="title" style="height: 50px"><%=rsCourse.getString(5)%>  </h4>
                                    <p class="update-time"><i class="lni lni-timer"></i> Last update date:  <%= (rsCourse.getString(9) != null ? rsCourse.getString(9) : rsCourse.getString(7))%></p>
                                    <ul class="rating">
                                        <li>Number of participants (<%=rsCourse.getInt(8)%>)</li>
                                    </ul>
                                    <ul class="info-list">
                                        <li style="display: block; width: 100%"><i class="lni lni-timer"></i> Course posting date: <%=rsCourse.getString(7)%></li>
                                    </ul>
                                </div>
                                <div class="bottom-content">
                                    <a href="CourseController?service=details&course_id=<%=rsCourse.getInt(1)%>" class="btn btn-block btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% count++;
                    } %>
                </div>
            </div>
            <div class="row view-all" style="margin-top: 10px">
                <div class="col-lg-5 col-md-5 col-12"></div>
                <div class="col-lg-2 col-md-2 col-12">
                    <a href="ViewAll?service=viewAllCourse" class="btn btn-block btn-primary"> View All Course</a>
                </div>
                <div class="col-lg-5 col-md-5 col-12"></div>
            </div>
        </div>
    </section>
    
                
                
                
    <!--Mentor List-->
    <!-- Chỗ này copy bên trên, còn làm thì tự thiết kế -->
    <section class="items-grid section custom-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">List Mentor Outstanding</h2>
                    </div>
                </div>
            </div>
            <!--Content-->
            <div class="single-head">
                <div class="row">
                    <% int count2 = 0;
                    while (rsMentor.next() && count2 < 6) { %>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image"> <!--ảnh mentor-->
                                <a href="#" class="thumbnail">
                                    <img src="<%=rsMentor.getString(6)%>" onerror="this.src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WsN6dLPa3HAHXNM3Pgy2k1TIe5c80AJ3sg&usqp=CAU'" alt="#">
                                </a>
                                <div class="author">
                                    <a href="MentorInfor?mentor_id=<%=rsMentor.getInt(1)%>" class="sale"> Details </a>
                                </div>
                            </div>
                            <div class="content" style="font-size: 18px">
                                <div class="top-content">
                                    <p><Strong><%=rsMentor.getString(5)%></Strong></p>
                                    <h5 class="title"><strong><%=rsMentor.getString(7)%></strong> </h5>
                                    <ul class="birthday">
                                        <li><i class="fa-solid fa-cake-candles"></i> Birthday: <strong> <%=rsMentor.getString(10)%></strong></li>
                                    </ul>
                                    <ul>
                                        <li><i class="fa-solid fa-school"></i> Qualification: <strong> <%=rsMentor.getString(11) != null ? rsMentor.getString(11) : "Postgraduate"%></strong></li>
                                    </ul>
                                    <ul class="specialize">
                                        <li><i class="fa-solid fa-user-doctor-hair-long"></i> Specialize: <strong> <%=rsMentor.getString(14) != null ? rsMentor.getString(14) : "Mentor" %></strong></li>
                                    </ul>
                                    <ul class="address">
                                        <li><i class="fa-solid fa-location-dot"></i> Address: <strong> <%=rsMentor.getString(9)%></strong></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% count2++; 
                    } %>
                </div>
            </div>
            <div class="row view-all" style="margin-top: 10px">
                <div class="col-lg-5 col-md-5 col-12"></div>
                <div class="col-lg-2 col-md-2 col-12">
                    <a href="ViewAll?service=viewAllMentor" class="btn btn-block btn-primary"> View All Mentor</a>
                </div>
                <div class="col-lg-5 col-md-5 col-12"></div>
            </div>
        </div>
    </section>
    
    
    
    
    
    <!-- Tương tự bên trên, phần này là list post -->
    <section class="items-grid section custom-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">Latest Ads</h2>
                    </div>
                </div>
            </div>
            <div class="single-head">
                <div class="row">
                    <% int count3 = 0;
                    while (rsPost.next() && count3 < 6) { %>
                    <div class="col-lg-4 col-md-6 col-12" style="height: 700px">
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image">
                                <a href="#" class="thumbnail">
                                    <img src="<%=rsPost.getString(6)%>" onerror="this.src='https://www.wikihow.com/images/9/96/Use-a-Blog-for-Business-Step-10.jpg'" alt="#">
                                </a>
                                <div class="author">
                                    <div class="author-image">    <!--ảnh marketer-->
                                        <a href="#">
                                            <img width="100px" src="<%=rsPost.getString(9)%>" onerror="this.src='https://cdn.onlinewebfonts.com/svg/img_511291.png'" alt="#">
                                            <span><%=rsPost.getString(8)%></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="content" style="font-size: 18px">
                                <div class="top-content">
                                    <!--tittle--> 
                                    <ul>
                                        <p>Title: <Strong><%=rsPost.getString(3)%></Strong></p>
                                    </ul>
                                    <!--short content-->
                                    <ul>
                                        <h5 class="title"><strong><%=rsPost.getString(7)%></strong> </h5>
                                    </ul>
                                    <ul class="posted-date">
                                        <li><i class="fa-solid fa-calendar-days"></i> Posted date: <strong> <%=rsPost.getString(4)%></strong></li>
                                    </ul>
                                    <ul>
                                        <li><i class="fa-solid fa-calendar-days"></i> Updated date: <strong> <%=rsPost.getString(5) != null ? rsPost.getString(5) : rsPost.getString(4)%></strong></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% count3++; 
                    } %>
                </div>
            </div>>
            </div>
            <div class="row view-all" style="margin-top: 10px">
                <div class="col-lg-5 col-md-5 col-12"></div>
                <div class="col-lg-2 col-md-2 col-12">
                    <a href="ViewAll?service=viewAllPost" class="btn btn-block btn-primary"> View All Ads</a>
                </div>
                <div class="col-lg-5 col-md-5 col-12"></div>
            </div>
        </div>
    </section>
    

    
    
    
    
    <!--Search display -->
<!--    -----------------
    ------------------>
    <%} else {
        if(request.getAttribute("rsCourse") != null && request.getAttribute("rsMentor") == null && request.getAttribute("rsPost") == null) { %>
        <%ResultSet rsCourses = (ResultSet)request.getAttribute("rsCourse");%>
        
            <section class="items-grid section custom-padding">
                <div class="container">
                    <div class="single-head">
                        <div class="row">
                            <%  while(rsCourses.next()) {
                            %>

                            <div class="col-lg-4 col-md-6 col-12">
                                <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                    <div class="image"> <!--ảnh course-->
                                        <!--Click vào ảnh cũng giống như click vào phần details -->
                                        <a href="CourseController?service=details&course_id=<%=rsCourses.getInt(1)%>" class="thumbnail">
                                            <img height="218px" src="<%=rsCourses.getString(2)%>" alt="#">
                                        </a>
                                        <div class="author">
                                            <div class="author-image">    <!--ảnh mentor-->
                                                <a href="Mentor?service=info&mentor_id=<%=rsCourses.getInt(11)%>">
                                                    <img src="<%=rsCourses.getString(4)%>" onerror="this.src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WsN6dLPa3HAHXNM3Pgy2k1TIe5c80AJ3sg&usqp=CAU'" alt="#">
                                                <span><%=rsCourses.getString(3) != null ? rsCourses.getString(3) : ""%></span>
                                                </a>
                                            </div>
                                            <%if (session.getAttribute("accountMentor") == null) {%>
                                                <a href="CourseController?service=errol&id=<%=rsCourses.getInt(1)%>" class="sale"> Join to course</a>
                                            <% }%>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <div class="top-content">
                                            <a href="SubjectController?service=details&subject_id=<%=rsCourses.getInt(10)%>">
                                                <p style="color: #F9A7A7; font-size: 18px; font-weight: 500">Subject: <%=rsCourses.getString(6)%></p>
                                            </a>
                                            <h4 class="title"><%=rsCourses.getString(5)%>  </h4>
                                            <p class="update-time"><i class="lni lni-timer"></i> Last update date:  <%= (rsCourses.getString(9) != null ? rsCourses.getString(9) : rsCourses.getString(10))%></p>
                                            <ul class="rating">
                                                <li>Number of participants (<%=rsCourses.getInt(8)%>)</li>
                                            </ul>
                                            <ul class="info-list">
                                                <li style="display: block; width: 100%"><i class="lni lni-timer"></i> Course posting date: <%=rsCourses.getString(7)%></li>
                                            </ul>
                                        </div>
                                        <div class="bottom-content">
                                            <a href="CourseController?service=details&course_id=<%=rsCourses.getInt(1)%>" class="btn btn-block btn-primary">Details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% } %>
                        </div>
                    </div>
                </div>
            </section>
        <%} else if(request.getAttribute("rsCourse") == null && request.getAttribute("rsMentor") != null && request.getAttribute("rsPost") == null) { %>
        <%ResultSet rsMentorS = (ResultSet)request.getAttribute("rsMentor");%>
        
            <section class="items-grid section custom-padding">
                <div class="container">
                    <div class="single-head">
                        <div class="row">
                            <% while (rsMentorS.next()) { %>
                            <div class="col-lg-4 col-md-6 col-12">
                                <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                    <div class="image"> <!--ảnh mentor-->
                                        <a href="#" class="thumbnail">
                                            <img src="<%=rsMentorS.getString(6)%>" onerror="this.src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WsN6dLPa3HAHXNM3Pgy2k1TIe5c80AJ3sg&usqp=CAU'" alt="#">
                                        </a>
                                        <div class="author">
                                            <a href="Mentor?service=info&mentor_id=<%=rsMentorS.getInt(1)%>" class="sale"> Details </a>
                                        </div>
                                    </div>
                                    <div class="content" style="font-size: 18px">
                                        <div class="top-content">
                                            <p><Strong><%=rsMentorS.getString(5)%></Strong></p>
                                            <h5 class="title"><strong><%=rsMentorS.getString(7)%></strong> </h5>
                                            <ul class="birthday">
                                                <li><i class="fa-solid fa-cake-candles"></i> Birthday: <strong> <%=rsMentorS.getString(10)%></strong></li>
                                            </ul>
                                            <ul>
                                                <li><i class="fa-solid fa-school"></i> Qualification: <strong> <%=rsMentorS.getString(11)%></strong></li>
                                            </ul>
                                            <ul class="specialize">
                                                <li><i class="fa-solid fa-user-doctor-hair-long"></i> Specialize: <strong> <%=rsMentorS.getString(14)%></strong></li>
                                            </ul>
                                            <ul class="address">
                                                <li><i class="fa-solid fa-location-dot"></i> Address: <strong> <%=rsMentorS.getString(9)%></strong></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% } %>
                        </div>
                    </div>
                </div>
            </section>
        <%} else if(request.getAttribute("rsCourse") == null && request.getAttribute("rsMentor") == null && request.getAttribute("rsPost") != null) { %>
        <%ResultSet rsPostS = (ResultSet)request.getAttribute("rsPost");%>
        
            <section class="items-grid section custom-padding">
                <div class="container">
                    <div class="single-head">
                        <div class="row">
                            <% while (rsPostS.next()) { %>
                            <div class="col-lg-4 col-md-6 col-12" style="height: 700px">
                                <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                                    <div class="image">
                                        <a href="#" class="thumbnail">
                                            <img src="<%=rsPostS.getString(6)%>" onerror="this.src='https://www.wikihow.com/images/9/96/Use-a-Blog-for-Business-Step-10.jpg'" alt="#">
                                        </a>
                                        <div class="author">
                                            <div class="author-image">    <!--ảnh marketer-->
                                                <a href="#">
                                                    <img width="100px" src="<%=rsPostS.getString(9)%>" onerror="this.src='https://cdn.onlinewebfonts.com/svg/img_511291.png'" alt="#">
                                                    <span><%=rsPostS.getString(8)%></span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content" style="font-size: 18px">
                                        <div class="top-content">
                                            <!--tittle--> 
                                            <ul>
                                                <p>Title: <Strong><%=rsPostS.getString(3)%></Strong></p>
                                            </ul>
                                            <!--short content-->
                                            <ul>
                                                <h5 class="title"><strong><%=rsPostS.getString(7)%></strong> </h5>
                                            </ul>
                                            <ul class="posted-date">
                                                <li><i class="fa-solid fa-calendar-days"></i> Posted date: <strong> <%=rsPostS.getString(4)%></strong></li>
                                            </ul>
                                            <ul>
                                                <li><i class="fa-solid fa-calendar-days"></i> Updated date: <strong> <%=rsPostS.getString(5)%></strong></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% } %>
                        </div>
                    </div>>
                </div>
            </section>
        <%}%>
        
    <% } %>
    
    
    <!-- /End Why Choose Area -->
   
    
    
    
    <!-- start Footer -->
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