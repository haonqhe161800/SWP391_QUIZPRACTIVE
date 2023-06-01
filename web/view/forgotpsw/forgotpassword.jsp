<%-- 
    Document   : forgotpassword
    Created on : 01-Jun-2023, 00:19:30
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="view/forgotpsw/assets/forgotstyle.css"/>
        <title>Forgotten Password</title>
    </head>
    <body>
        <div class="abcdy">
            <div class="abcd">
                <div class="forgot-psw">
                    <div class="forgot-header">
                        <h1 class="title-forgot">Reset your password</h1>
                        <p class="paragraph">Enter your Quizlet username or the email address you signed up with. We'll email you a link to log in and reset your password.</p>
                    </div>
                    <div class="forgot-form">
                        <form action="restpassword" method="POST">
                            <div class="form-input">
                                <input type="email" placeholder="abc.gmail.com" name="email"/>
                            </div>
                            <span class="UIInput-border"></span>
                            <div class="form-signin">
                                <button type="submit">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
