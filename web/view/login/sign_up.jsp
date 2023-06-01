<%-- 
    Document   : sign_up
    Created on : 29-May-2023, 11:51:27
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <link rel="stylesheet" href="view/login/assets/myRegister.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <section class="abcdy row">
            <div class="left_slide col-md-6">
                <div class="left_slide-img">
                </div>
            </div>
            <div class="right_slide col-md-6">
                <div class="login">
                    <div class="login-header">
                        <h1>Sign up</h1>
                    </div>
                    <div class="login-form">
                        <form action="">
                            <div class="form-input">
                                <input type="text" placeholder="Username" />
                            </div>
                            <div class="form-input">
                                <input type="password" placeholder="Password" />
                            </div>
                            <div class="form-input">
                                <input type="password" placeholder="Confirm Password" />
                            </div>
                            <div class="form-input">
                                <div class="radio-inputs">
                                    <label class="radio">
                                        <input type="radio" name="role" checked="">
                                        <span class="name">Student</span>
                                    </label>

                                    <label class="radio">
                                        <input type="radio" name="role">
                                        <span class="name">Teacher</span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-signup">
                                <button><span class="title_signup">Join for free</span></button>
                            </div>
                        </form>
                        <div class="login-form-footer">
                            <span class="text_footer"> Alrealy has account? <a class="sign-in" href="#">Sign
                                    In Here!</a></span>
                        </div>
                    </div>
                </div>

                <div class="box_banner_mini"> QUIZ PRACTICE</div>

            </div>
        </section>
        <script src="mycode.js"></script>
    </body>
</html>
