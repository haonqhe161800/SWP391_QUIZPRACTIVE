<%-- 
    Document   : HomePage
    Created on : May 19, 2023, 3:15:45 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="Entities.AccountUser"%>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

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
    

    <div style="margin-bottom: 100px ">
        <jsp:include page="HeaderAdmin.jsp"></jsp:include>
    </div>


    <div class="container" style="display: flex">
        <jsp:include page="Sidebar.jsp"></jsp:include>
        
        <div class="content" style="margin-left: 50px; flex: 2">
            <%if(request.getAttribute("listUser") != null) {
                Vector<AccountUser> listUser = (Vector<AccountUser>) request.getAttribute("listUser");
            %>
            <h3>User list</h3>
            <table class="table">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Email</th>
                    <th scope="col">Password</th>
                    <th scope="col">Address</th>
                </tr>
                
               <%for (AccountUser accountUser : listUser) {%>
                <tr>
                    <td><%=accountUser.getUser_id()%></td>
                    <td><%=accountUser.getFullName()%></td>
                    <td>
                        <%if(accountUser.getGender() == 1) {%>
                        <i class="fas fa-mars"></i>
                        <% } else { %>
                        <i class="fas fa-venus"></i>
                        <%}%>
                    </td>
                    <td><%=accountUser.getEmail()%></td>
                    <td><%=accountUser.getPassword()%></td>
                    <td><%=accountUser.getAddress()%></td>
                </tr>
               <%}%>
            </table>
            <%}%>
            
            <%if(request.getAttribute("rsMentor") != null) {
                ResultSet rsMentor = (ResultSet) request.getAttribute("rsMentor");
            %>
            <table class="table">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Email</th>
                    <th scope="col">Password</th>
                    <th scope="col">Address</th>
                </tr>
                
               <%while(rsMentor.next()) {%>
                <tr>
                    <td><%=rsMentor.getInt(1)%></td>
                    <td><%=rsMentor.getString(5)%></td>
                    <td>
                        <%if(rsMentor.getInt(13) == 1) {%>
                        <i class="fas fa-mars"></i>
                        <% } else { %>
                        <i class="fas fa-venus"></i>
                        <%}%>
                    </td>
                    <td><%=rsMentor.getString(2)%></td>
                    <td><%=rsMentor.getString(3)%></td>
                    <td><%=rsMentor.getString(9)%></td>
                </tr>
               <%}%>
            </table>
            <%}%>
            
            <%if(request.getAttribute("rsMarketer") != null) {
                ResultSet rsMarketer = (ResultSet) request.getAttribute("rsMarketer");
            %>
            <table class="table">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Email</th>
                    <th scope="col">Password</th>
                    <th scope="col">Address</th>
                </tr>
                
               <%while(rsMarketer.next()) {%>
                <tr>
                    <td><%=rsMarketer.getInt(1)%></td>
                    <td><%=rsMarketer.getString(5)%></td>
                    <td>
                        <%if(rsMarketer.getInt(13) == 1) {%>
                        <i class="fas fa-mars"></i>
                        <% } else { %>
                        <i class="fas fa-venus"></i>
                        <%}%>
                    </td>
                    <td><%=rsMarketer.getString(2)%></td>
                    <td><%=rsMarketer.getString(3)%></td>
                    <td><%=rsMarketer.getString(9)%></td>
                </tr>
               <%}%>
            </table>
            <%}%>
            
        </div>
    </div>
       
    
    
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
    <script src="./assets/js/admin.js"></script>
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
