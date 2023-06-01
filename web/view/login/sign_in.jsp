<%-- 
    Document   : sign_in
    Created on : 29-May-2023, 11:51:18
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign in</title>
        <link rel="stylesheet" href="view/login/assets/myindex.css">
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
                        <h1>Sign in</h1>
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
                                <div class="checkboxxx">
                                    <input type="checkbox" name="remember" class="checkbox">
                                    <label for="rememberMeCheckbox">Remember me</label>
                                </div>
                                <div class="forgot-pass">
                                    <span><a href="restpassword">Forgot password?</a></span>
                                </div>
                            </div>
                            <div class="form-signin">
                                <button><span class="title_signin">Login</span></button>
                            </div>
                        </form>
                        <div class="login-form-footer">
                            <span class="text_footer"> Don't have an account? <a class="sign-up" href="#">Sign
                                    Up!</a></span>
                        </div>
                    </div>
                </div>

                <div class="box_banner_mini"> QUIZ PRACTICE</div>

            </div>
        </section>
        <script src="mycode.js"></script>
    </body>
</html>
