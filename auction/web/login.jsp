<%-- 
    Document   : login
    Created on : Jan 28, 2016, 9:37:56 PM
    Author     : kimaiga
--%>
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
  //java code
String uname = request.getParameter("username");
String pass = request.getParameter("password");
//sql check
String sql = "SELECT * FROM user WHERE username = '"+uname+"' AND password = '"+pass+"'";
st.execute(sql);

if (uname =="" || pass ==""){
    out.println("Empty Fields");
}

  
%>    