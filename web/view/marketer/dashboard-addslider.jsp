

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vn">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="view/marketer/assets/css/styleSliderAdd.css">

        <!-- Bootstrap 4 -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <!--Ajax-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

        <!-- fontanswer icons -->
        <script src="https://kit.fontawesome.com/fe000f9b2a.js" crossorigin="anonymous"></script>

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
                        <img src="https://th.bing.com/th/id/OIP.mDMuXjKAMMflGF_1y8keZAHaEo?pid=ImgDet&rs=1" alt="">
                        <i class="fa-solid fa-chevron-down" style="padding: 8px;"></i>
                        <nav class="dropdown-ofme quote show">
                            <ul class="nav-dropdown">
                                <li class="dropdown-i">
                                    <span class="avatarr"><img
                                            src="https://th.bing.com/th/id/OIP.mDMuXjKAMMflGF_1y8keZAHaEo?pid=ImgDet&rs=1"
                                            alt=""></span>
                                    <span>
                                        <p id="d-name">DisplayName</p>
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
                        <label><a href="#">DashBoard</a> / <a>List Slider</a> / <a>Add Slider</a></label>
                    </div>
                </div>
                <form class="row" action="addslider" method="POST" enctype="multipart/form-data" >
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="">Content:</label>
                                <div class="item-input">
                                    <input type="text" name="content">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="">Note:</label>
                                <div class="item-input">
                                    <input type="text" name="note"> 
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="">Relative Subject:</label>
                                <div class="item-input">
                                    <Select name="subject">
                                        <option value="">A</option>
                                        <option value="">B</option>
                                        <option value="">C</option>
                                    </Select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="item-input">
                                    <input type="radio" name="status" checked> visable
                                    <input type="radio" name="status"> hide
                                </div>
                            </div>
                        </div>
                       
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="">Image:</label>
                                <div class="item-input">
                                    <input type="file" id="file-input" accept="image/*" name="upfile">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label for="">1920x480</label>
                            <img class="frame" id="img-preview" >
                        </div>
                    </div>
                     <div class="col-md-12 mt-3">
                            <div class="form-group">
                                <div class="item-input">
                                    <button class="btn-dark" id="submit">Submit</button>
                                </div>
                            </div>
                        </div>
                </form>
                <!-- The Modal -->
                <div id="myModal" class="mmodal">
                    <span class="close">&times;</span>
                    <img class="modal-ccontent" id="img01">
                    <div id="caption">alt.png</div>
                </div>
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
    <script>
        const input = document.getElementById('file-input');
        const image = document.getElementById('img-preview');

        input.addEventListener('change', (e) => {
            if (e.target.files.length) {
                const src = URL.createObjectURL(e.target.files[0]);
                image.src = src;
            }
        });
    </script>
    <script type="text/javascript">
        const modal = document.getElementById("myModal");

        const img = document.getElementById("img-preview");
        const modalImg = document.getElementById("img01");
        img.onclick = function () {
            modal.style.display = "block";
            modalImg.src = this.src;
        };
        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // When the user clicks on <span> (x), close the modal
        span.onclick = function () {
            modal.style.display = "none";
        };
    </script>
</body>
</html>
