<%-- 
    Document   : Dashboard
    Created on : Jul 22, 2023, 5:57:07 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.time.LocalDate"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />


        <!-- ========================= CSS here ========================= -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/css/LineIcons.2.0.css" />
        <link rel="stylesheet" href="assets/css/animate.css" />
        <link rel="stylesheet" href="assets/css/tiny-slider.css" />
        <link rel="stylesheet" href="assets/css/glightbox.min.css" />
        <link rel="stylesheet" href="assets/css/main.css" />

        <!--popup of Marketer-->
        <link rel="stylesheet" href="assets/css/newcss.css"/>
        <!-- fontanswer icons -->
        <script src="https://kit.fontawesome.com/fe000f9b2a.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

        <!-- ========================= CSS here ========================= -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/css/LineIcons.2.0.css" />
        <link rel="stylesheet" href="assets/css/animate.css" />
        <link rel="stylesheet" href="assets/css/tiny-slider.css" />
        <link rel="stylesheet" href="assets/css/glightbox.min.css" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="stylesheet" href="assets/css/admin.css" />
        <!-- jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdn.canvasjs.com/ga/canvasjs.min.js"></script>
        <style>
            .space{
                margin-top: 10%;
            }
        </style>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="space"></div>
        <%LocalDate  date = LocalDate.now();%>
     


        <div id="chartContainer" style="height: 300px; width: 100%;"></div>
    </body>

    <a href="#" class="scroll-top btn-hover">
        <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/tiny-slider.js"></script>
    <script src="assets/js/glightbox.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/admin.js"></script>

    <script type="text/javascript">
        // Lấy dữ liệu từ Servlet bằng AJAX
        fetch('ChartData')
                .then(response => response.json())
                .then(data => {
                    console.log(data);
                    var chart = new CanvasJS.Chart("chartContainer", {
                        title: {
                            text: "Thống kê lượng truy cập"
                        },
                        data: [{
                                type: "column",
                                dataPoints: data
                            }]
                    });
                    chart.render();
                })
                .catch(error => console.error('Error:', error));
    </script>

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
</html>
