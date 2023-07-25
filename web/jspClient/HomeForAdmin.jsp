<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Entities.Post" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <title>Quiz Practice</title>
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1" /


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
        <style>
            .space{
                margin-top: 10%;
            }
        </style>
    </head>

    <body>

        <jsp:include page="HeaderAdmin.jsp"></jsp:include>
            <div class="space"></div>

            <div>
                <div class="container" style="display: flex; position: relative">
                <jsp:include page="Sidebar.jsp"></jsp:include>

                    <div class="content" style="margin-left: 50px; flex: 2">
                    <%if(request.getAttribute("rsUser") != null) {
                        ResultSet rsUser = (ResultSet) request.getAttribute("rsUser");
                    %>
                    <h3 style="margin-bottom: 12px">User list</h3>
                    <form method="post" action="manageUser">
                        <input type="hidden" name="service" value="search">
                        <div style="display: flex">
                            <input style="padding: 4px 4px; width: 300px; margin-right: 12px" type="text" name="name" placeholder="Enter user name need to search...">
                            <div class="bottom-content">
                                <input class="btn btn-block btn-primary" type="submit" value="Search">
                            </div>
                        </div>
                    </form>
                    <table class="table">
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Name</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Email</th>
                            <th scope="col">Address</th>
                        </tr>

                        <%int i = 0;
                        while(rsUser.next()) {
                            i++;%>
                        <tr>
                            <td><%=i%></td>
                            <td><%=rsUser.getString(5)%></td>
                            <td>
                                <%if(rsUser.getInt(13) == 1) {%>
                                <i class="fas fa-mars"></i>
                                <% } else { %>
                                <i class="fas fa-venus"></i>
                                <%}%>
                            </td>
                            <td><%=rsUser.getString(2)%></td>
                            <td><%=rsUser.getString(9)%></td>
                        </tr>
                        <%}%>
                    </table>

                    <%}%>

                    <%if(request.getAttribute("rsMentor") != null) {
                        ResultSet rsMentor = (ResultSet) request.getAttribute("rsMentor");
                    %>
                    <h3 style="margin-bottom: 12px">Mentor list</h3>
                    <form method="post" action="manageMentor">
                        <input type="hidden" name="service" value="search">
                        <div style="display: flex">
                            <input style="padding: 4px 4px; width: 300px; margin-right: 12px" type="text" name="name" placeholder="Enter mentor name need to search...">
                            <div class="bottom-content">
                                <input class="btn btn-block btn-primary" type="submit" value="Search">
                            </div>
                        </div>
                    </form>
                    <table class="table">
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Name</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Email</th>
                            <th scope="col">Address</th>
                        </tr>

                        <%int i = 0;
                        while(rsMentor.next()) {
                            i++;%>
                        <tr>
                            <td><%=i%></td>
                            <td><%=rsMentor.getString(5)%></td>
                            <td>
                                <%if(rsMentor.getInt(13) == 1) {%>
                                <i class="fas fa-mars"></i>
                                <% } else { %>
                                <i class="fas fa-venus"></i>
                                <%}%>
                            </td>
                            <td><%=rsMentor.getString(2)%></td>
                            <td><%=rsMentor.getString(9)%></td>
                        </tr>
                        <%}%>
                    </table>
                    <%}%>

                    <%if(request.getAttribute("rsMarketer") != null) {
                        ResultSet rsMarketer = (ResultSet) request.getAttribute("rsMarketer");
                    %>
                    <h3 style="margin-bottom: 12px">Marketer list</h3>
                    <form method="post" action="manageMarketer">
                        <input type="hidden" name="service" value="search">
                        <div style="display: flex">
                            <input style="padding: 4px 4px; width: 300px; margin-right: 12px" type="text" name="name" placeholder="Enter nmarketer name need to search...">
                            <div class="bottom-content">
                                <input class="btn btn-block btn-primary" type="submit" value="Search">
                            </div>

                        </div>
                    </form>
                    <table class="table">
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Name</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Email</th>
                            <th scope="col">Address</th>
                        </tr>

                        <%int i = 0;
                        while(rsMarketer.next()) {
                            i++;%>
                        <tr>
                            <td><%=i%></td>
                            <td><%=rsMarketer.getString(5)%></td>
                            <td>
                                <%if(rsMarketer.getInt(13) == 1) {%>
                                <i class="fas fa-mars"></i>
                                <% } else { %>
                                <i class="fas fa-venus"></i>
                                <%}%>
                            </td>
                            <td><%=rsMarketer.getString(2)%></td>
                            <td><%=rsMarketer.getString(9)%></td>
                        </tr>
                        <%}%>
                    </table>

                    <%}%>

                    <%if(request.getAttribute("rsSubject") != null) {
                        ResultSet rsSubject = (ResultSet) request.getAttribute("rsSubject");
                    %>

                    <h3 style="margin-bottom: 12px">Subject list</h3>
                    <div style="display: flex">
                        <form style="margin-bottom: 12px; padding: 12px" method="POST" action="manageSubject">
                            <div style="display: flex; align-items: center">
                                <input type="hidden" name="service" value="search" />
                                <input style="padding: 4px 4px; width: 300px; margin-right: 12px" type="text" name="name" placeholder="Enter subject name need to search...">
                                <div class="bottom-content">
                                    <input id="submit" class="btn btn-block btn-primary" type="submit" value="Search">
                                </div>
                                <span class="btn-open-modal">Create subject</span>
                            </div>
                        </form>
                    </div>
                    <table class="table">
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Name</th>
                            <th scope="col">Image</th>
                            <th scope="col">Number of courses</th>
                            <th scope="col">Action</th>                    
                        </tr>

                        <%int i = 0;
                        while(rsSubject.next()) {
                            i++;%>
                        <tr>
                            <td><%=i%></td>
                            <td><%=rsSubject.getString(1)%></td>
                            <td><img style="width: 50px; height: 50px" src="<%=rsSubject.getString(3)%>"></td>
                            <td><%=rsSubject.getInt(4)%></td>
                            <td style="display: flex; justify-content: space-between"">
                                <form action="manageSubject" method="POST">
                                    <input type="hidden" name="service" value="delete">
                                    <input type="hidden" name="subject_id" value="<%=rsSubject.getInt(2)%>">

                                    <button type="submit" class="delete-btn" data-toggle="modal" onclick="return confirm('Are you sure you want to delete this subject?')">                                   
                                        <i class="far fa-trash-alt"></i>
                                    </button>
                                </form>
                                <button style="border: transparent" class="edit-btn"><a href="manageSubject?service=edit&subject_id=<%=rsSubject.getInt(2)%>"><i class="far fa-edit"></i></a></button>
                            </td>

                        </tr>
                        <%}%>

                    </table>

                    <div class="modal-subject">
                        <div class="modal-container-subject">
                            <div class="modal-subject-title">
                                <h4>Create new subject</h4>
                            </div>
                            <form <form action="manageSubject" method="POST">
                                <input type="hidden" name="service" value="add">
                                <div class="input">
                                    <label for="subject-name">Subject name</label><br>
                                    <input id="subject-name" type="text" name="name" required=""/>
                                </div>
                                <div class="input">
                                    <label for="subject-image">Image</label>
                                    <input id="subject-image" name="file" type="file" class="form-control" required="">
                                </div>
                                <div class="button">
                                    <span class="btn-cancel">Cancel</span>
                                    <button style="margin-left: 6px" class="btn-create">Create</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <%}%>

                    <%if(request.getAttribute("rsCourse") != null) {
                        ResultSet rsCourse = (ResultSet) request.getAttribute("rsCourse");
                        ResultSet subjectName = (ResultSet) request.getAttribute("subjectName");
                    %>
                    <div style="margin-bottom: 12px">
                        <h3 style="margin-right: 8px">Course list</h3>
                        <div style="display: flex">
                            <form style="margin-bottom: 12px; padding: 12px" method="POST" action="manageCourse">
                                <div style="display: flex; align-items: center">
                                    <input type="hidden" name="service" value="search" />
                                    <input style="padding: 4px 4px; width: 300px; margin-right: 12px" type="text" name="name" placeholder="Enter course name need to search...">
                                    <div class="bottom-content">
                                        <input id="submit" class="btn btn-block btn-primary" type="submit" value="Search">
                                    </div>
                                    <span class="btn-open-modal">Create course</span>
                                </div>
                            </form>
                        </div>
                    </div>
                    <table class="table">
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Subject name</th>
                            <th scope="col">Course name</th>
                            <th scope="col">Image</th>
                            <th scope="col">Number of question</th>
                            <th scope="col">View question</th>
                            <th colspan="2">Action</th>
                        </tr>

                        <%int i = 0;
                        while(rsCourse.next()) {
                            i++;%>
                        <tr>
                            <td><%=i%></td>
                            <td><%=rsCourse.getString(2)%></td>
                            <td><%=rsCourse.getString(3)%></td>
                            <td><img style="width: 50px; height: 50px" src="<%=rsCourse.getString(4)%>"></td>
                            <td><%=rsCourse.getInt(5)%></td>
                            <td><a href="QuestionAdmin?service=show&courseID=<%=rsCourse.getInt(1)%>"><i class="far fa-question-circle"></i></a></td>
                            <td style="display: flex; justify-content: space-between">
                                <%if(rsCourse.getString(6) == null) {%>
                                <form action="manageCourse" method="POST">
                                    <input type="hidden" name="service" value="delete">
                                    <input type="hidden" name="course_id" value="<%=rsCourse.getInt(1)%>">

                                    <button type="submit" class="delete-btn" data-toggle="modal" onclick="return confirm('Are you sure you want to delete this course?')">                                   
                                        <i class="far fa-trash-alt"></i>
                                    </button>
                                </form>
                                <button style="border: transparent" class="edit-btn"><a href="manageCourse?service=edit&course_id=<%=rsCourse.getInt(1)%>"><i class="far fa-edit"></i></a></button>
                                        <%}%>
                            </td>
                        </tr>
                        <%}%>
                    </table>

                    <div class="modal-subject">
                        <div class="modal-container-subject">
                            <div class="modal-subject-title">
                                <h4>Create new course</h4>
                            </div>
                            <form action="manageCourse" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="service" value="add">
                                <div class="input">
                                    <label for="course-name">Course name</label><br>
                                    <input id="course-name" type="text" name="name" required=""/>
                                </div>
                                <div class="input">
                                    <label for="course-description">Description</label>
                                    <input id="course-description" name="description" type="text" class="form-control" required>
                                </div>
                                <div class="input">
                                    <label for="ourse-image">Image</label>
                                    <input id="ourse-image" name="file" type="file" class="form-control" required>
                                </div>
                                <div class="input">
                                    <label for="publish">Publish</label>
                                    <select id="publish" name="publish">
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>
                                <div>
                                    <label for="subject-name">Subject name</label>
                                    <select id="subject-name" name="subject_id">
                                        <%while(subjectName.next()) {%>
                                        <option value="<%=subjectName.getInt(1)%>"><%=subjectName.getString(2)%></option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="button">
                                    <span class="btn-cancel">Cancel</span>
                                    <button type="submit" style="margin-left: 6px" class="btn-create">Create</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <%}%>

                    <%
                   if(request.getAttribute("rsAprrovePost") != null) {
                       ArrayList<Post> arrpending = (ArrayList<Post>) request.getAttribute("rsAprrovePost");
                    
                    %>
                    <div class="row">                        
                        <%
                           for (Post post : arrpending) {                                      
                        %>
                        <div class="col-lg-6 col-md-6 col-12" style="background-color: #edeae5;border-radius: 8px;box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px;">
                            <a class="row" style="padding: 2%;">
                                <div class="col-5" style="border-right: 1px solid black;">
                                    <img src="https://th.bing.com/th/id/OIP._u2y3ALsReUrOiEKDaF9-gHaEE?pid=ImgDet&rs=1" alt="alt" width="100%" height="105px"/>
                                </div>
                                <div class="col-7" style="text-align: center;">
                                    <div><p>Title: <%=post.getTittle()%></p></div>
                                    <div><p>Category:<%=post.getB().getBlog_name()%></p></div>

                                    <% String pattern = "yyyy-MM-dd";%>
                                    <% java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(pattern); %>
                                    <% String datestring = sdf.format(post.getPosted_date()); %>
                                    <div><p>Date: <%=datestring%></p></div>
                                    <div><h4><%=post.getAm().getDisplay_name()%></h4></div>
                                </div>
                            </a>
                            <button class="btn-success" style="margin: 3%;padding: 10px;" onclick="window.location.href = 'managePost?id=<%=post.getPost_id()%>&status=approve'">Approve</button>
                            <button class="btn-danger" style="float: right;margin: 3%;padding: 10px;" onclick="window.location.href = 'managePost?id=<%=post.getPost_id()%>&status=reject'">Reject</button>
                        </div>
                        <%
                           }
                        %>
                    </div>
                    <%
                      }
                    %>
                </div>
            </div>
        </div>



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
        <script src="assets/js/admin.js"></script>
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
