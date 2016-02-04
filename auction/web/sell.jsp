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
      <!--form validation-->
      <script type="text/javascript">
      function MM_findObj(n, d) {
        var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
            d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);
        }
        if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
        for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
            if(!x && d.getElementById) x=d.getElementById(n); return x;
    }

    function MM_validateForm() {
        var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
        for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
            if (val) { nm=val.name;
                if ((val=val.value)!="") {
                    if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
                    if (p<1 || p==(val.length-1)) errors+='- '+nm+' .\n';
                }
                else if (test!='R'){
                    num = parseFloat(val);
                    if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
                    if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
                    min=test.substring(8,p); max=test.substring(p+1);
                    if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
                }
            }
        } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n';
    }
} if (errors) alert('The following error(s) occurred:\n'+errors);
document.MM_returnValue = (errors == '');
}
  </script>
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
                                <input type="file" name="photos" size="6" id="photos">
                                <br>
                                <button type="submit" class="button" value="upload">Click to Upload Photos</button>
                            </div>
                        </label>
                        <div class="row">
                            <div class="medium-6 columns">    
                                <label id="labels">Area of Residence
                                    <select name="residence" id="residence_area">
                                        <option value="defaut" selected>Select a residence</option>
                                        <option value="nairobi">Nairobi</option>
                                    </select>
                                </label>
                            </div>
                            <div class="medium-6 columns">   
                                <label id="labels">Estate
                                    <select name="estate" id="residence_estate">
                                        <option value="default" selected>Select an Estate</option>
                                        <option value="lavington">Lavignton</option>
                                        <option value="donholm">Donholm</option>
                                    </select>
                                </label>
                            </div>
                        </div>
                        <label id="labels">Number of Bedrooms
                            <select name="bedrooms" id="bed_rooms">
                                <option value="default" selected></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </label>
                        <label id="labels">Property Type
                            <select name="type" id="type">
                                <option value="default" selected></option>
                                <option value="Bungalow">Bungalow</option>
                                <option value="Maisonette">Maisonette</option>
                                <option value="apartment">Apartment</option>
                            </select>
                        </label>
                        <label>Initial Starting Price
                            <input type="text" id="startingprice" placeholder="Starting Price">
                        </label>
                        <label>Duration
                            <select name="duration" id="duration">
                                <option value="default" selected></option>
                                <option value="3">3 days</option>
                                <option value="3">5 days</option>
                                <option value="3">7 days</option>
                                <option value="3">10 days</option>
                                <option value="3">30 days</option>
                            </select>
                        </label>
                        <button class="button" type="submit" onclick="MM_validateForm('title','','R','description','','R', 'photos','','R','residence_area','','R', 'residence_estate','','R','bed_rooms','','R', 'type','','R','duration','','R');return document.MM_returnValue">Post Item</button>
                    </div>
                </div> <!--end of container div-->
            </form>
        </section>
    </body>
</html>
