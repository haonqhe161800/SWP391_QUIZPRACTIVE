<%-- 
    Document   : marketerDashboard
    Created on : 07-Jun-2023, 16:55:19
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard marketer</title>
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="view/marketer/assets/css/styleMain.css">

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

        <!-- jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    </head>

    <body>
        <div class="sidebar" id="style-1">
            <div class="logo-details">
                <div class="logo_name">Quiz Practice</div>
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
                        <!-- <img src="https://th.bing.com/th/id/OIP.mDMuXjKAMMflGF_1y8keZAHaEo?pid=ImgDet&rs=1" alt=""
                            role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"> -->
                        <!-- <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div> -->
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
        </section>
        <Footer class="footer mt-3">
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
