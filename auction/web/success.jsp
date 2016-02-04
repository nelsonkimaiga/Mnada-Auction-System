<%-- 
    Document   : success
    Created on : Feb 4, 2016, 2:08:31 PM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8" />
    <!--<meta http-equiv="x-ua-compatible" content="ie=edge">-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> Welcome</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <link rel="stylesheet" href="css/app.css" />
    <!-- fonts -->
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
  </head>
    <body>
        <!--container section and navbar-->
        <div>
         <div class="container-fluid">
            <h3 class="masthead-brand"><a href="#home"><img src="img/logo.jpg" id="nav-logo"></a></h3>
            <nav>
                <ul class="nav masthead-nav">
                    <li class="active"><a href="#">Logout</a></li>
                    <li><a href="">Buy</a></li>
                    <li><a href="">Sell</a></li> 
                </ul>
            </nav>
         </div>
        </div>
       <!--message section-->
       <div>
           <h1 id="welcome-message">
<!--initiate session-->
<%
            String a=session.getAttribute("username").toString();
            out.println("Welcome to Bryclin Kenya! You are logged in as  "+a);
%>
       </h1>
           <!--Proceed-->
           <button class="large button" onclick="window.location.href='buy.jsp'">Proceed</button>
       </div>
    </body>
</html>

