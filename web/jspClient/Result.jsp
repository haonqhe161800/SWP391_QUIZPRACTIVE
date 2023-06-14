<%-- 
    Document   : Result
    Created on : Jun 12, 2023, 11:57:24 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Vector"%>
<%@page import="Entities.Question"%>
<%@page import="Entities.Answer"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        Vector<Question> listQuestion = (Vector<Question>) request.getAttribute("listQuestion");
        Vector<Answer> listAnswer = (Vector<Answer>) request.getAttribute("listAnswer");
        String nameCourse = (String) request.getAttribute("nameCourse");
        int id = (int) request.getAttribute("id");
        double grade = (double) request.getAttribute("grade");
        String status = (String) request.getAttribute("status");
        %>
        
        <div style="margin-bottom: 150px ">
            <jsp:include page="Header.jsp"></jsp:include>
        </div>
        
        <div style="text-align: center; margin-bottom: 20px">
            <h2><%=nameCourse%></h2>
        </div>
        
        <div>
            <div>
                <p><%=grade%>%</p>
                <p><%=status%></p>                
            </div>
        </div>
        
        <div class="container exam">
            <div class="content_exam">
                <form action="CourseController" method="get" onsubmit="openResult(e)">
                    <input type="hidden" name="service" value="result">
                    <input type="hidden" name="id" value="<%=id%>">
                    <%for (Question question : listQuestion) {%>
                    <div style="margin-bottom: 12px">
                        <p class="question"><%=question.getQuestion_name()%></p>
                        <%for (Answer answer : listAnswer) {
                            if(answer.getQuestion_id() == question.getQuestion_id()) {%> 
                            <span id="icon"></span>
                            <input id="<%=answer.getAnswer_id()%>" class="<%=question.getQuestion_id()%>" name="question<%=question.getQuestion_id()%>" type="radio" value="<%=answer.getIs_correct()%>" onclick="handleClick(className)"/>
                            <label for="<%=answer.getAnswer_id()%>"><%=answer.getAnswer_name()%></label><br>
                            <input type="hidden" name="answer" value="<%=answer.getAnswer_name()%>" >
                            <%}
                        }%>
                    </div>
                    <%}%>
                    <div class="bottom-content">
                        <input id="submit" class="btn btn-block btn-primary" type="submit" value="Nộp bài">
                    </div>
                </form>
            </div>
                    
            <div class="menu_exam">
                <%for (Question question : listQuestion) {%>
                <div>
                    <p id="question<%=question.getQuestion_id()%>" class="number_question"><%=question.getQuestion_id()%></p>
                </div>
                <%}%>
            </div>
        </div>
            

        <jsp:include page="Footer.jsp"></jsp:include>
        
        <a href="#" class="scroll-top btn-hover">
            <i class="lni lni-chevron-up"></i>
        </a>

        <script src="./assets/js/bootstrap.min.js"></script>
        <script src="./assets/js/wow.min.js"></script>
        <script src="./assets/js/tiny-slider.js"></script>
        <script src="./assets/js/glightbox.min.js"></script>
        <script src="./assets/js/main.js"></script>
        <script>
            
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
            
            function handleClick(className) {
                document.getElementById('question' + className).classList.add('forcus');
            }

            function openResult(e) {
                e.preventDefault();
                document.querySelector('.modal').classList.add('open');
            }
            
            document.getElementById('submit').onclick = function () {
                   <%for (Answer answer : listAnswer) {%>
                        values = document.getElementById('<%=answer.getAnswer_id()%>');
                        for (var i = 0; i < values.length; i++) {
                            if(values[i].checked === true && values[i].value === "1") {
                                document.getElementById('icon').innerHTML = `<i class="fas fa-check-circle"></i>`;
                            } else {
                                document.getElementById('icon').innerHTML = `<i class="fas fa-times-circle"></i>`;
                            }    
                        }
                   <%}%>
            }
            
        </script>
        
    </body>
</html>
