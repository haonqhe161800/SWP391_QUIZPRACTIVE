<!-- Start Header Area -->
<%@page import="Entities.AccountUser"%> 
<%@page import="Entities.AccountMarketer"%> 
<%@page import="Entities.AccountMentor"%> 

<header class="header navbar-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="nav-inner">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="HomeController">
                               QUIZPRACTICE
                            </a>
                            <button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                <ul id="nav" class="navbar-nav ms-auto">
                                    <li class="nav-item">
                                        <a class=" active dd-menu collapsed" href="HomeController"
                                            data-bs-toggle="collapse" data-bs-target="#submenu-1-1"
                                            aria-controls="navbarSupportedContent" aria-expanded="false"
                                            aria-label="Toggle navigation">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#" aria-label="Toggle navigation">Activity</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class=" dd-menu collapsed" href="#"
                                            data-bs-toggle="collapse" data-bs-target="#submenu-1-3"
                                            aria-controls="navbarSupportedContent" aria-expanded="false"
                                            aria-label="Toggle navigation">Listings</a>
                                        <ul class="sub-menu collapse" id="submenu-1-3">
                                            <li class="nav-item"><a href="#">List Ad</a></li>
                                            <li class="nav-item"><a href="#">List Source</a></li>
                                            <li class="nav-item"><a href="#">List Mentor</a></li>
                                            <li class="nav-item"><a href="#">List Marketer</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class=" dd-menu collapsed" href="#"
                                            data-bs-toggle="collapse" data-bs-target="#submenu-1-3"
                                            aria-controls="navbarSupportedContent" aria-expanded="false"
                                            aria-label="Toggle navigation">Help</a>
                                        <ul class="sub-menu collapse" id="submenu-1-3">
                                            <li class="nav-item"><a href="#">Report</a></li>
                                            <li class="nav-item"><a href="#">Chat</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class=" dd-menu collapsed" href="#"
                                            data-bs-toggle="collapse" data-bs-target="#submenu-1-4"
                                            aria-controls="navbarSupportedContent" aria-expanded="false"
                                            aria-label="Toggle navigation">Pages</a>
                                        <ul class="sub-menu mega-menu collapse" id="submenu-1-4">
                                            <li class="single-block">
                                                <ul>
                                                    <li class="mega-menu-title">Essential Pages</li>
                                                    <li class="nav-item"><a href="#">About Us</a></li>
                                                    <li class="nav-item"><a href="#">Sign Up</a></li>
                                                    <li class="nav-item"><a href="SubjectController">Sign In</a></li>
                                                      <li class="nav-item"><a href="ChangePassword">Change Password</a></li>                                                    
                                                    <li class="nav-item"><a href="#">FAQ</a></li>
                                                </ul>
                                            </li>
                                            <li class="single-block">
                                                <ul>
                                                    <li class="mega-menu-title">Dashboard</li>
                                                    <li class="nav-item"><a href="#">Account Overview</a></li>
                                                    <li class=""><a href="profile">My Profile</a></li>
                                                    <li class="nav-item"><a href="#">My Ads</a></li>
                                                    <li class="nav-item"><a href="#">Messages</a></li></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div> <!-- navbar collapse -->
                            <%if(session.getAttribute("accountUser") != null) {
                                AccountUser au = (AccountUser) session.getAttribute("accountUser");
                            %>                        
                             <div class="login-button">
                                <ul>
                                    <li>
                                        <a href="#"><i class="lni lni-enter"></i><%=au.getDisplay_name()%></a>
                                    </li>
                                    <li>
                                        <a href="signout"><i class="lni lni-user"></i> Logout</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="button header-button">
                                <a href="#" class="btn">Practice</a>
                            </div>
                            <%} else if(session.getAttribute("accountMarketer") != null) {
                                AccountMarketer amer = (AccountMarketer) session.getAttribute("accountMarketer");
                            %>
                            <div class="login-button">
                                <ul>
                                    <li>
                                        <a href="#"><i class="lni lni-enter"></i><%=amer.getDisplay_name()%></a>
                                    </li>
                                    <li>
                                        <a href="signout"><i class="lni lni-user"></i> Logout</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="button header-button">
                                <a href="#" class="btn">Post an Ad</a>
                            </div>
                            <%} else if(session.getAttribute("accountMentor") != null) {
                                AccountMentor amor = (AccountMentor) session.getAttribute("accountMentor");
                            %>
                            <div class="login-button">
                                <ul>
                                    <li>
                                        <a href="#"><i class="lni lni-enter"></i><%=amor.getDisplay_name()%></a>
                                    </li>
                                    <li>
                                        <a href="signout"><i class="lni lni-user"></i> Logout</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="button header-button">
                                <a href="#" class="btn">Post a course</a>
                            </div>
                            <%} else {%>
                            <div class="login-button">
                                <ul>
                                    <li>
                                        <a href="login"><i class="lni lni-enter"></i>Login</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="lni lni-user"></i>Sig up</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="button header-button">
                                <a href="#" class="btn">Practice</a>
                            </div>
                            <%}%>
                        </nav> <!-- navbar -->
                    </div>
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </header>
    <!-- End Header Area -->