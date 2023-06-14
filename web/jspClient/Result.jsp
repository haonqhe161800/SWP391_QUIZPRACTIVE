<%-- 
    Document   : Result
    Created on : Jun 12, 2023, 11:57:24 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            double grade = (double) request.getAttribute("grade");
            String status = (String) request.getAttribute("status");
            String answer = (String) request.getAttribute("answer");
        %>
        <div class="modal">
            <div class="modal-container">
                <p><%=grade%>%</p>
                <p><%=status%></p>                
                <p><%=answer%></p>
            </div>
        </div>
    </body>
</html>
