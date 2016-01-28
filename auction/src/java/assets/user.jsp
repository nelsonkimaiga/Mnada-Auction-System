<%-- 
    Document   : login
    Created on : Jan 27, 2016, 5:36:47 PM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,com.onlinebank.BankCommons" errorPage="" %>
<%
//java Code
String uname = request.getParameter("uname");
int accno = Integer.parseInt(request.getParameter("accno"));
String acc_type = request.getParameter("acc_type");
String details = request.getParameter("details");
String sql = "INSERT INTO acc_details VALUES ("+accno+",'"+uname+"','"+acc_type+"','"+details+"')";
//System.out.println(sql);
int update = BankCommons.update(sql);

%>
