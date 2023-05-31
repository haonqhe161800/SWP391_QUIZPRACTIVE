<%-- 
    Document   : sign_up
    Created on : 29-May-2023, 11:51:27
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.time.LocalDate"%>
<%@page import = "java.time.Month"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <link rel="stylesheet" href="view/login/assets/myRegister.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
    <body>
        <div class="abcdy">
            <div class="left_slide ">
                <div class="left_slide-img">
                </div>
            </div>
            <div class="right_slide">
                <div class="login">
                    <div class="login-header">
                        <h1>Sign up</h1>
                    </div>
                    <div class="login-form">
                        <form action="">
                            <div class="form-input">
                                <div class="dob-input">
                                    <div class="title">
                                        <p>Please Enter Your Birthday</p>
                                    </div>
                                    <div class="dob-content">
                                        <select name="birth-day" class="select-day">
                                            <option value="-1">Day</option>
                                            <%
                                               LocalDate currentDate = LocalDate.now();
                                                    int dayStart = 1;
                                                    for(int i = dayStart; i <= 31; i++){
                                        %>
                                            <option value="<%= i %>"><%= i %></option>
                                        <% }%>
                                        </select>
                                        <select name="birth-month" class="select-month">
                                            <option value="-1">Month</option>
                                            <%
                                                Month[] months = Month.values();
                                                    int monthStart = 1;
                                                   for (int i = monthStart; i < months.length; i++) {
                                        %>
                                        <option value="<%=i%>"><%=months[i]%></option>
                                        <%}%>
                                        </select>
                                        
                                          <select name="birth-year" class="select-year">
                                            <option value="-1">Year</option>
                                        <%
                                            
                                                    int year = currentDate.getYear();
                                                    for(int i = year; i>= 1894; i--){
                                        %>
                                            <option value="<%= i %>"><%= i %></option>
                                        <% }%>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-input">
                                <input type="email" placeholder="Email" name="email"/>
                            </div>
                            <div class="form-input">
                                <div class="radio-gender">
                                   
                                    <label class="gender-input">
                                        <input type="radio" name="gender" value="1">
                                        <span class="title-gender">Male</span>
                                    </label>

                                    <label class="gender-input">
                                        <input type="radio" name="gender" value="0">
                                        <span class="title-gender">Female</span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-input">
                                <input type="password" placeholder="Password" name="pass" />
                            </div>
                            <div class="form-input">
                                <input type="password" placeholder="Confirm Password" name="cpass"/>
                            </div>
                            <div class="form-input">
                                <div class="radio-inputs">
                                    <c:forEach var="r" items="${chooserole}">
                                        <label class="radio">
                                        <input type="radio" name="role" ${r.id == 4 ? 'checked' : ''} value="${r.id}">
                                        <span class="name">${r.roleName}</span>
                                    </label> 
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="form-input">
                                <input type="text" id="submitLogin" placeholder="Captcha code">
                            </div>
                            <span id="image" class="inline">
                            </span>

                            <span onclick="generate()" id="change">
                                Change
                            </span>
                            <span id="bt" onclick="printmsg()">Check</span><br /><br />

                            <p id="key" style="color: black"></p>
                            <p class="form-row" style="color: red; font-weight: 600">
                                    ${messregis}
                                </p>
                            <div class="form-signup">
                                <button type="submit" id="btnRegister" disabled=""><span class="title_signup">Join for
                                        free</span></button>
                            </div>
                            <p class="message"></p>
                        </form>
                        <div class="login-form-footer">
                            <span class="text_footer"> Alrealy has account? <a class="sign-in" href="#">Sign
                                    In Here!</a></span>
                        </div>
                    </div>
                </div>

                <div class="box_banner_mini"> QUIZ PRACTICE</div>

            </div>
        </div>
        <script src="view/login/assets/js/mycode.js"></script>
    </body>
</html>
