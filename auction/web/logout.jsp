<%-- 
    Document   : logout
    Created on : Feb 4, 2016, 3:09:11 PM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
<%      session.removeAttribute("username"); 
        session.removeAttribute("password");
        session.invalidate();
        response.sendRedirect("index.jsp");
%> 
        <!--<h1>Logout was done successfully.</h1>-->
    </body>
</html>
