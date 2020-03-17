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

int i =Database.update(u);
try{
if(i>0){
response.sendRedirect("Dashboard.jsp");
}
else{
    response.sendRedirect("updateusers");
    
}
}catch(Exception r){
    out.print(r);
}
 
 
%>
