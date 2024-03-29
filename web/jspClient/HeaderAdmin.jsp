<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Entities.AccountAdmin"%>
        <header class="header navbar-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="nav-inner">
                        <nav class="navbar navbar-expand-lg" style="display: flex; justify-content: space-between">
                            <a class="navbar-brand" href="manageUser">
                                <strong>QUIZPRACTICE</strong>
                            </a>
                            <%
                                AccountAdmin aa = (AccountAdmin) session.getAttribute("accountAdmin");
                            %>
                            <div class="login-button">
                                <ul>
                                    <li>
                                        <a href="manageUser"><img  src="" alt="" onerror="this.src='assets/avatar/base.png'"  style="border-radius: 50%;height: 3em;object-fit: cover;width: 3em;cursor: pointer;">Hello Admin</a>
                                    </li>
                                    <li>
                                        <a href="signout"><i class="lni lni-user"></i> Logout</a>
                                    </li>
                                </ul>
                            </div>
                        </nav> <!-- navbar -->
                    </div>
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </header>
