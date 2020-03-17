<%-- 
    Document   : logindb
    Created on : Jun 5, 2019, 4:18:42 PM
    Author     : roh
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/jsptot";
    String user="root";
    String pass="root";
    Statement stm=null;
    ResultSet rs=null;
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body><%
       try{
          
           Class.forName(driver);
           Connection con = DriverManager.getConnection(url, user, pass);
           
                   %>
                   <script type="text/javascript">
                       alert("Driver loaded");
                       </script>
                       <%
               
       }catch(Exception e){
      
       out.println(e);
       }
       %>
    </body>
</html>