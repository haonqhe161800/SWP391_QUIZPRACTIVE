<%-- 
    Document   : HomePage
    Created on : May 19, 2023, 3:15:45 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
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
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./assets/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="./assets/css/animate.css" />
    <link rel="stylesheet" href="./assets/css/tiny-slider.css" />
    <link rel="stylesheet" href="./assets/css/glightbox.min.css" />
    <link rel="stylesheet" href="assets/css/main.css" />
    
    <!--popup of Marketer-->
    <link rel="stylesheet" href="./assets/css/newcss.css"/>
        <!-- fontanswer icons -->
    <script src="https://kit.fontawesome.com/fe000f9b2a.js" crossorigin="anonymous"></script>

     <!-- jquery -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
     
     <style>
         .paging {
          display: flex;
          justify-content: center;
          align-items: center;
        }

        .paging a {
          display: inline-block;
          padding: 5px 10px;
          margin-right: 5px;
          color: #333;
          text-decoration: none;
          font-size: 16px;
          border: 1px solid #ccc; 
          border-radius: 3px;
        }

        .paging a.active {
          background-color: #333;
          color: #fff;
        }

        .paging a:hover:not(.active) {
          background-color: #f2f2f2;
        }

        .btn_prev, .btn_next {
          font-size: 20px;
        }

        .btn_prev:hover, .btn_next:hover {
          background-color: #f2f2f2;
        }

        .btn_prev {
          margin-right: 10px;
        }

        .btn_next {
          margin-left: 10px;
        }
     </style>
</head>

<body>
    

<!--     Start Header Area 
    <%--<jsp:include page="Header.jsp"></jsp:include>--%>
    <jsp:include page="Header.jsp"></jsp:include>
     End Header Area -->


    <!-- Start Hero Area -->
    <section class="hero-area overlay" style="height: 650px">
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
                        <form method="post" action="ViewAll">
                            <input type="hidden" name="service" value="searchMentor">
                            
                            <div class="search-form wow fadeInUp" data-wow-delay=".7s">
                                <div class="row">
                                    <div class="col-lg-8 col-md-7 col-12 p-0">
                                        <div class="search-input">
                                            <label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
                                            <input type="text" value="${text_search}" name="keyword" id="keyword" placeholder="Find something ...">
                                        </div>
                                    </div>
                                    
                                    <div class="col-lg-4 col-md-2 col-12 p-0">
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

    <%
        ResultSet rsMentor = (ResultSet)request.getAttribute("rsMentor");
    %>
    
    <!-- List Course -->
    <section class="items-grid section custom-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="wow fadeInUp" data-wow-delay=".4s">All Mentor Outstanding</h2>
                    </div>
                </div>
            </div>
            <!--Content-->
            <div class="single-head">
                <div class="row">
                    <% while (rsMentor.next()) { %>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s">
                            <div class="image"> <!--ảnh mentor-->
                                <a href="#" class="thumbnail">
                                    <img src="<%=rsMentor.getString(6)%>" onerror="this.src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WsN6dLPa3HAHXNM3Pgy2k1TIe5c80AJ3sg&usqp=CAU'" alt="#">
                                </a>
                                <div class="author">
                                    <a href="#" class="sale"> Details </a>
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
                                        <li><i class="fa-solid fa-school"></i> Qualification: <strong> <%=rsMentor.getString(11)%></strong></li>
                                    </ul>
                                    <ul class="specialize">
                                        <li><i class="fa-solid fa-user-doctor-hair-long"></i> Specialize: <strong> <%=rsMentor.getString(14)%></strong></li>
                                    </ul>
                                    <ul class="address">
                                        <li><i class="fa-solid fa-location-dot"></i> Address: <strong> <%=rsMentor.getString(9)%></strong></li>
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
                
    <%
        int endP = (int)request.getAttribute("endP");
        int indexP = (int)request.getAttribute("indexP");
        String href = (String)request.getAttribute("href");
    %>
    <p class="paging text-center" style="margin: 20px 0 20px 0; font-size: 20px">
            <a href="<%=href%>&index=<%=(indexP-1)%>" style="<%=indexP > 1 && indexP <= endP ? "display: inline-block" : "display: none"%>"> 
                <i class="fas fa-chevron-left btn_prev"></i>
            </a>

        <%for(int i = 1; i <= endP; i++) {%>
            <a class="paging_link <%=indexP == i ? "active" : ""%>" href="<%=href%>&index=<%=i%>"><%=i%></a>
        <%}%>

        <a href="<%=href%>&index=<%=(indexP+1)%>" style="<%=indexP < endP && indexP >= 1 ? "display: inline-block" : "display: none"%>"> 
            <i class="fas fa-chevron-right btn_next"></i>
        </a>
    </p> 
                

    <!-- start Footer -->
    <jsp:include page="Footer.jsp"></jsp:include>
    <!--/ End Footer Area -->

    
    
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
