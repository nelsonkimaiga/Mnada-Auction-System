<%-- 
    Document   : sell
    Created on : Feb 4, 2016, 3:29:55 PM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>Bryclin Kenya | Sell an Item</title>
      <link rel="stylesheet" href="css/foundation.css" />
      <link rel="stylesheet" href="css/app.css" />
      <!-- fonts -->
      <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    </head>
    <body>
          <div class="container-fluid">
            <h3 class="masthead-brand"><a href="#home"><img src="img/logo.jpg" id="nav-logo"></a></h3>
            <nav>
                <ul class="nav masthead-nav">
                    <li class="active"><a href="logout.jsp">Logout</a></li>
                    <li><a href="buy.jsp">Buy</a></li>
                    <li><a href="sell.jsp">Sell</a></li> 
                </ul>
            </nav>
         </div>
        
        
        <p id="list-message">Create a Listing to sell your item</p>
        <section>
            <form class="form" name="sellform" method="POST" action="" autocomplete="off">
                <div class="container">
                    <div class="medium-12 large-12 columns">
                        <label id="labels">Title
                            <fieldset>
                                <input type="text"name="title" id="title" placeholder="Item Title">
                            </fieldset>
                        </label>
                        <label id="labels">Description
                            <fieldset>
                                <textarea id="description" name="description" rows="6" placeholder="Highlight any defects, missing parts, scratches or wear and tear also described in your item description"></textarea>
                            </fieldset>
                        </label>
                        <label id="labels">Photo Upload
                            <div class="row">
                                <input type="file" name="photos" size="6">
                                <br>
                                <button type="submit" class="button" value="upload">Click to Upload Photos</button>
                            </div>
                        </label>
                        <div class="row">
                            <div class="medium-6 columns">    
                                <label id="labels">Area of Residence
                                    <select name="residence">
                                        <option value="defaut" selected>Select a residence</option>
                                        <option value="nairobi">Nairobi</option>
                                    </select>
                                </label>
                            </div>
                            <div class="medium-6 columns">   
                                <label id="labels">Estate
                                    <select name="estate">
                                        <option value="default" selected>Select an Estate</option>
                                        <option value="lavington">Lavignton</option>
                                        <option value="donholm">Donholm</option>
                                    </select>
                                </label>
                            </div>
                        </div>
                        <label id="labels">Number of Bedrooms
                            <select name="bedrooms">
                                <option value="default" selected></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </label>
                        <label id="labels">Property Type
                            <select name="type">
                                <option value="default" selected></option>
                                <option value="Bungalow">Bungalow</option>
                                <option value="Maisonette">Maisonette</option>
                                <option value="apartment">Apartment</option>
                            </select>
                        </label>
                    </div>
                </div>
            </form>
        </section>
    </body>
</html>
