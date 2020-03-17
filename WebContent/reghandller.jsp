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
    try{
int result=Database.save(u);
 
if(result>0){
	response.sendRedirect("login.jsp");
}
 
else{
	
	%>
	<script type="text/javascript">
                       alert("failed to register");
                       </script><%
	response.sendRedirect("reg.jsp");
}
    }catch(Exception e){
    	%>
    	
        <script type="text/javascript">
                       alert(e);
                       </script>
                       <% 
    }
 
 
%>
