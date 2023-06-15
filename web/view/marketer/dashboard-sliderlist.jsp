<%-- 
    Document   : dashboard-sliderlist
    Created on : 15-Jun-2023, 04:52:13
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Custom fonts for this template-->
        <link href="view/marketer/assets/vendor/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="view/marketer/assets/css/styleSliderList.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />

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
    </head>
    <body>
        <div class="sidebar" id="style-1">
            <div class="logo-details">
                <div class="logo_name">Quiz Pratice</div>
                <i class='bx bx-menu' id="btn"></i>
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
                        <span class="links_name">Slider</span>
                    </a>
                    <span class="tooltip">Slider</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-chat'></i>
                        <span class="links_name">Post</span>
                    </a>
                    <span class="tooltip">Post</span>
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
                        <span class="links_name">...</span>
                    </a>
                    <span class="tooltip">...</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-cart-alt'></i>
                        <span class="links_name">...</span>
                    </a>
                    <span class="tooltip">...</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-heart'></i>
                        <span class="links_name">...</span>
                    </a>
                    <span class="tooltip">...</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-cog'></i>
                        <span class="links_name">Setting</span>
                    </a>
                    <span class="tooltip">Setting</span>
                </li>
                <li class="profile">
                    <div class="profile-details">
                        <img src="../img/banner_left.png" alt="profileImg">
                        <div class="name_job">
                            <div class="name">NamNH</div>
                            <div class="job">Marketing</div>
                        </div>
                    </div>
                    <i class='bx bx-log-out' id="log_out"></i>
                </li>
            </ul>
            <div class="force-overflow"></div>
        </div>
        <section class="home-section">
            <div class="menu">
                <nav class="nav-left_attr">
                    <span style="line-height: 60px;
                          padding: 0 10px;">NamNH</span>
                    <div class="avatarr dropdown">
                        <img src="https://th.bing.com/th/id/OIP.mDMuXjKAMMflGF_1y8keZAHaEo?pid=ImgDet&rs=1" alt=""
                             role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                             aria-expanded="false" style="border-radius: 50%;
                             height: 3em;
                             object-fit: cover;
                             width: 3em;
                             cursor: pointer;">
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </div>
                </nav>
            </div>


            <div class="content container-fluid mt-3" style="width: 95%;">
                <div class="row filter">
                    <div class="num-entry">
                        <label>Show</label>
                        <select name="entry" id="record">
                            <option value="">10</option>
                            <option value="">5</option>
                            <option value="">3</option>
                        </select>
                        <label>entries</label>
                    </div>
                    <div class="search-name">
                        <label for="search">Search:</label>
                        <input type="text" name="search" id="">
                    </div>
                </div>
                <div class="row">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">Id <i class="fa-solid fa-arrow-up" style="float: right;"></i></th>
                                <th scope="col">Content <i class="fa-solid fa-arrow-up-a-z" style="float: right;"></i></th>
                                <th scope="col">Slider_url</th>
                                <th scope="col">Status</th>
                                <th scope="col" style="text-align: center;">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>C language quiz now</td>
                                <td style="width: 30%;"><img src="view/blog/assets/slider/slider/1.png" alt="" width="90%"></td>
                                <td style="width: 12%;">
                                    <span><i class="visiblle fa-regular fa-eye"></i> </span>
                                    <span><i class="hide fa-regular fa-eye-slash"></i></span>
                                </td>
                                <td style="text-align: center;">
                                    <span><i class=" delete fa-regular fa-trash-can"></i></span>
                                    <span><i class="edit fa-regular fa-pen-to-square"></i></span>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>C++ language quiz now</td>
                                <td style="width: 30%;"><img src="view/blog/assets/slider/slider/2.png" alt="" width="90%"></td>
                                <td style="width: 12%;">
                                    <span><i class="visiblle fa-regular fa-eye"></i> </span>
                                    <span><i class="hide fa-regular fa-eye-slash"></i></span>
                                </td>
                                <td style="text-align: center;">
                                    <span><i class=" delete fa-regular fa-trash-can"></i></span>
                                    <span><i class="edit fa-regular fa-pen-to-square"></i></span>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>C# language quiz now</td>
                                <td style="width: 30%;"><img src="view/blog/assets/slider/slider/3.png" alt="" width="90%"></td>
                                <td style="width: 12%;">
                                    <span><i class="visiblle fa-regular fa-eye"></i> </span>
                                    <span><i class="hide fa-regular fa-eye-slash"></i></span>
                                </td>
                                <td style="text-align: center;">
                                    <span><i class=" delete fa-regular fa-trash-can"></i></span>
                                    <span><i class="edit fa-regular fa-pen-to-square"></i></span>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>Java language quiz now</td>
                                <td style="width: 30%;"><img src="view/blog/assets/slider/slider/4.png" alt="" width="90%"></td>
                                <td style="width: 12%;">
                                    <span><i class=" visiblle fa-regular fa-eye"></i> </span>
                                    <span><i class="hide fa-regular fa-eye-slash"></i></span>
                                </td>
                                <td style="text-align: center;">
                                    <span><i class=" delete fa-regular fa-trash-can"></i></span>
                                    <span><i class="edit fa-regular fa-pen-to-square"></i></span>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">5</th>
                                <td>Javascript language quiz now</td>
                                <td style="width: 30%;"><img src="view/blog/assets/slider/slider/5.png" alt="" width="90%"></td>
                                <td style="width: 12%;">
                                    <span><i class=" visiblle fa-regular fa-eye"
                                             style="background-color: rgb(16, 210, 29)"></i> </span>
                                    <span><i class="hide fa-regular fa-eye-slash"></i></span>
                                </td>
                                <td style="text-align: center;">
                                    <span><i class=" delete fa-regular fa-trash-can"></i></span>
                                    <span><i class="edit fa-regular fa-pen-to-square"></i></span>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">6</th>
                                <td>Python language quiz now</td>
                                <td style="width: 30%;"><img src="view/blog/assets/slider/slider/6.png" alt="" width="90%"></td>
                                <td style="width: 12%;">
                                    <span><i class=" visiblle fa-regular fa-eye"></i> </span>
                                    <span><i class="hide fa-regular fa-eye-slash"></i></span>
                                </td>
                                <td style="text-align: center;">
                                    <span><i class="edit fa-regular fa-pen-to-square"></i></span>
                                    <span><i class="edit fa-regular fa-pen-to-square"></i></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="container pt-2">
                <div class="row justify-content-md-center">
                    <nav class="num-page">
                        <ul class="pagination justify-content-end">
                            <li class="page-item disabled">
                                <a class="page-link" href="#" tabindex="-1">Previous</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#">Next</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="footer mt-3">
                <p>@Copyright by NamNH</p>
            </div>
        </section>
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
        </script>
    </body>
</html>
