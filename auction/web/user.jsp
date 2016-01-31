<%-- 
    Document   : login
    Created on : Jan 27, 2016, 5:36:47 PM
    Author     : kimaiga
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,java.sql.ResultSet, java.sql.Statement;"%>
<%
//java Code
Connection conn= null;
    String url = "jdbc:mysql://localhost/";
    String dbName = "auction";
    String driver ="com.mysql.jdbc.Driver";
    String user = "root";
    String password = "";
    Statement st = null;
    ResultSet rs;

    try{
        Class.forName(driver);
        conn = DriverManager.getConnection(url+dbName,user,password);
        st = conn.createStatement();
    }catch(Exception exp){
        out.println("<h3>Cannot connect to the database,check network settings.</h3>");
    }

String fname = request.getParameter("firstname");
String secname = request.getParameter("secondname");
String email = request.getParameter("email");
String pass = request.getParameter("password");

String sql = "INSERT INTO user VALUES ('"+fname+"','"+secname+"','"+email+"','"+pass+"')";
st.execute(sql);
conn.createStatement();
System.out.println(sql);
       response.setContentType("text/html;charset=UTF-8");
        PrintWriter x = response.getWriter();
        out.print("<script type=\"text/javascript\">document.alert(\"YOU ARE VERIFIED!\");</script>");
%>