<%-- 
    Document   : Learning
    Created on : Jun 7, 2023, 9:11:44 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Vector"%>
<%@page import="Entities.Question"%>
<%@page import="Entities.Answer"%>
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
        <link rel="stylesheet" href="./assets/css/exam.css" />
    </head>
    <body>
        
        <%
        Vector<Question> listQuestion = (Vector<Question>) request.getAttribute("listQuestion");
        Vector<Answer> listAnswer = (Vector<Answer>) request.getAttribute("listAnswer");
        String nameCourse = (String) request.getAttribute("nameCourse");
        %>
        
        <div style="margin-bottom: 150px ">
            <jsp:include page="Header.jsp"></jsp:include>
        </div>
        
        <div style="text-align: center; margin-bottom: 20px">
            <h2><%=nameCourse%></h2>
        </div>
        
        
        <div class="container exam">
            <div class="content_exam">
                <form action="CourseController" method="post">
                    <input type="hidden" name="service" value="result">
                    <%for (Question question : listQuestion) {%>
                    <div style="margin-bottom: 12px">
                        <input readonly class="question" type="text" value="<%=question.getQuestion_name()%>">
                        <%for (Answer answer : listAnswer) {
                            if(answer.getQuestion_id() == question.getQuestion_id()) {%>    
                            <input class="answer" type="radio" /><%=answer.getAnswer_name()%><br>
                            <%}
                        }%>
                    </div>
                    <%}%>
                    <div class="bottom-content">
                        <input class="btn btn-block btn-primary" type="submit" value="Nộp bài">
                    </div>
                </form>
            </div>
                    
            <div class="menu_exam">
                <%for (Question question : listQuestion) {%>
                <div>
                    <p class="number_question"><%=question.getQuestion_id()%></p>
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
        <script src="./assets/js/exam.js"></script>
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
