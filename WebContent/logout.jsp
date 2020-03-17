<%-- 
    Document   : logout
    Created on : Jun 10, 2019, 7:40:24 PM
    Author     : roh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
session.invalidate();
response.sendRedirect("login.jsp");
%>
