<%-- 
    Document   : loginRequestHandler
    Created on : Jun 10, 2019, 7:37:28 PM
    Author     : roh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="DB.Database"%>
<jsp:useBean id="u" class="Model.User" scope="session"/>
<jsp:setProperty name="u" property="*"/>
 
<%
boolean result=Database.validate(u);
 
if(result){
	session.setAttribute("username",u.getUsername());
	response.sendRedirect("Dashboard.jsp");
}
 
if(!result){
	response.sendRedirect("login.jsp?status=false");
}
 
 
%>
