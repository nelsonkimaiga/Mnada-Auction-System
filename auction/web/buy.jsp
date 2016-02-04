<%-- 
    Document   : buy
    Created on : Feb 3, 2016, 6:01:41 PM
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
      
      <br>
      <!--search form-->
      <div class="medium-6 large-6 columns" id="searchdiv">  
      <form id="searchform" class="form-search form" autocomplete="off" action="/search/submit/" method="POST">
          <fieldset>
              <input type="text" name="search" placeholder="Search">
          </fieldset>
      </form>
      </div>
      
      <br>
      <!--Image placeholders-->
      
  </body>   

