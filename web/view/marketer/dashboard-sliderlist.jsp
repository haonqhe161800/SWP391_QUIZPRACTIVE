<%-- 
    Document   : dashboard-sliderlist
    Created on : 15-Jun-2023, 04:52:13
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Dashboard</title>
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="view/marketer/assets/css/styleSliderList.css">

        <!-- Bootstrap 4 -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

        <!-- fontanswer icons -->
        <script src="https://kit.fontawesome.com/fe000f9b2a.js" crossorigin="anonymous"></script>
        <script>
            function change() {

                var searchInput = document.getElementById('searchInput').value;
                var selectInput = document.getElementById('selectInput').value;

                var url;
                if (searchInput === '' && selectInput !== '') {
                    url = 'listslider?entry=' + encodeURIComponent(selectInput);
                } else if (searchInput !== '' && selectInput === '') {
                    url = 'listslider?search=' + encodeURIComponent(searchInput);
                } else {
                    url = 'listslider?search=' + encodeURIComponent(searchInput) + '&entry=' + encodeURIComponent(selectInput);
                }
                window.location.href = url;
            }
            
            function redirect(){
                 window.location.href = 'addslider';
            }


        </script>
        <style>
            .active{
                pointer-events:none;
            }      .
        </style>
    </head>

    <body>
        <div class="sidebar" id="style-1">
            <div class="logo-details">
                <div class="logo_name">QUIZ PRACTICE</div>
            </div>
            <ul class="nav-list">
                <li>
                    <a href="#">
                        <i class='bx bx-grid-alt'></i>
                        <span class="links_name">Dashboard</span>
                    </a>
                    <span class="tooltip">Dashboard</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-user'></i>
                        <span class="links_name">Subject</span>
                    </a>
                    <span class="tooltip">Subject</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-chat'></i>
                        <span class="links_name">Messages</span>
                    </a>
                    <span class="tooltip">Messages</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-pie-chart-alt-2'></i>
                        <span class="links_name">Analytics</span>
                    </a>
                    <span class="tooltip">Analytics</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-folder'></i>
                        <span class="links_name">File Manager</span>
                    </a>
                    <span class="tooltip">Files</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-cart-alt'></i>
                        <span class="links_name">Order</span>
                    </a>
                    <span class="tooltip">Order</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-heart'></i>
                        <span class="links_name">Saved</span>
                    </a>
                    <span class="tooltip">Saved</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-cog'></i>
                        <span class="links_name">Setting</span>
                    </a>
                    <span class="tooltip">Setting</span>
                </li>
            </ul>
            <div class="force-overflow"></div>
        </div>
        <section class="home-section">
            <div class="menu">
                <nav class="nav-left_attr">
                    <i class='bx bx-menu' id="btn" style="text-align: center; padding: 1rem; font-size: 2rem;"></i>
                </nav>
                <nav class="nav-right_attr">
                    <span style="line-height: 60px;
                          padding: 0 10px;">NamNH</span>
                    <div class="avatarr dropdown">
                        <img src="https://th.bing.com/th/id/OIP.mDMuXjKAMMflGF_1y8keZAHaEo?pid=ImgDet&rs=1" alt="">
                        <i class="fa-solid fa-chevron-down" style="padding: 8px;"></i>
                        <nav class="dropdown-ofme quote show">
                            <ul class="nav-dropdown">
                                <li class="dropdown-i">
                                    <span class="avatarr"><img src="https://th.bing.com/th/id/OIP.mDMuXjKAMMflGF_1y8keZAHaEo?pid=ImgDet&rs=1" alt=""></span>
                                    <span> <p id="d-name">DisplayName</p>
                                        <p id="role">Marketer</p>
                                    </span>
                                </li>
                                <li class="dropdown-i">Home</li>
                                <li class="dropdown-i">Profile Setting</li>
                                <li class="dropdown-i">Sign out</li>
                            </ul>                           
                        </nav>

                    </div>
                </nav>
            </div>


            <div class="content container-fluid mt-3" style="width: 95%;">
                <div class="row filter">
                    <div class="num-entry">
                        <form action="" onchange="change()" id="f1">
                            <label>Show</label>
                            <select name="entry" id="selectInput" >
                                <option value="10" ${param['entry']==10?"selected":""}>10</option>
                                <option value="5" ${param['entry']==5?"selected":""}>5</option>
                                <option value="3" ${param['entry']==3?"selected":""}>3</option>
                            </select>
                            <label>entries</label>
                        </form>
                    </div>
                    <div class="search-name">
                        <form action="" onchange="change()" id="f1">
                            <label for="search">Search:</label>
                            <input type="text" name="search" id="searchInput" value="${requestScope.search}">
                        </form>
                    </div>
                    <div class="btn-add">
                        <button class="btn-warning add-slider" onclick="redirect()">Add Slider</button>
                    </div>
                </div>
                <div class="row">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Id <i class="fa-solid fa-arrow-up"></i></th>
                                <th scope="col">Content <i class="fa-solid fa-arrow-up-a-z"></i></th>
                                <th scope="col">Slider_url</th>
                                <th scope="col">Status</th>
                                <th scope="col" style="text-align: center;">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="l" items="${requestScope.listslider}">
                                <tr>
                                    <th scope="row">${l.slider_id}</th>
                                    <td>${l.content}</td>
                                    <td style="width: 30%;"><img src="view/slider/${l.url}" alt="${l.url}" width="90%"></td>
                                    <td style="width: 12%;">
                                        <span><i class="visiblle fa-regular fa-eye"></i> </span>
                                        <span><i class="hide fa-regular fa-eye-slash"></i></span>
                                    </td>
                                    <td style="text-align: center;">
                                        <span><i class=" delete fa-regular fa-trash-can"></i></span>
                                        <span><i class="edit fa-regular fa-pen-to-square"></i></span>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="container-fluid pt-2">
                <div class="row justify-content-md-center">
                    <nav class="num-page">
                        <ul class="pagination justify-content-end">
                            <c:if test="${index > 1}">
                               <li class="page-item">
                                    <a class="page-link" href="listslider?search=${requestScope.search}&entry=${param['entry']}&index=${param['index']-1}">Previous</a>
                            </li> 
                            </c:if>
                            <c:forEach var = "i" begin = "1" end = "${numberPage}">
                                <li class="${param['index']==i?'page-item active':'page-item'}"><a href="listslider?search=${requestScope.search}&entry=${param['entry']}&index=${i}" class="page-link">${i}</a></li>
                                </c:forEach>
                                <c:if test="${ index < numberPage}">
                                <li class="page-item"><a class="page-link" href="listslider?search=${requestScope.search}&entry=${param['entry']}&index=${param['index']+1}">Next</a></li>
                            </c:if>
                        </ul>
                    </nav>
                </div>
            </div>
        </section>
        <Footer class="footer">
            <p>@Copyright by NamNH</p>
        </Footer>
        <script>
            let sidebar = document.querySelector(".sidebar");
            let closeBtn = document.querySelector("#btn");

            closeBtn.addEventListener("click", () => {
                sidebar.classList.toggle("open");
                menuBtnChange();//calling the function(optional)
            });

            // following are the code to change sidebar button(optional)
            function menuBtnChange() {
                if (sidebar.classList.contains("open")) {
                    closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
                } else {
                    closeBtn.classList.replace("bx-menu-alt-right", "bx-menu");//replacing the iocns class
                }
            }


            // dialog menu
            let iconUp = document.querySelector(".fa-chevron-down");
            let dialogMenu = document.querySelector(".dropdown-ofme");
            iconUp.addEventListener("click", () => {
                dialogMenu.classList.toggle("show");
                dialogChange();
            })
            function dialogChange() {
                if (dialogMenu.classList.contains("show")) {
                    iconUp.classList.replace("fa-chevron-down", "fa-chevron-up");
                } else {
                    iconUp.classList.replace("fa-chevron-up", "fa-chevron-down");
                }
            }
        </script>
    </body>
</html>
