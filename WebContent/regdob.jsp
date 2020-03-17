<%-- 
    Document   : regdob
    Created on : Aug 7, 2019, 6:46:19 AM
    Author     : roh
--%>

<%@page import="java.sql.*"%>

<%
    try{
    
String firstname = request.getParameter("fname");
String middlename = request.getParameter("mname");
String lastname = request.getParameter("lname");
String email = request.getParameter("uname");
String password = request.getParameter("password");
String remarks = request.getParameter("remarks");


Class.forName("com.mysql.jdbc.Driver");

Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/Blog","root","root");

String sql = "insert into tbl_users(first_name,middle_last,last_name,user_name,password,remarks) values(?,?,?,?,?,?)";
PreparedStatement pst = con.prepareStatement(sql);
pst.setString(1, firstname);
pst.setString(2, middlename);
pst.setString(3, lastname);
pst.setString(4, email);
pst.setString(5, password);
pst.setString(6, remarks);
pst.executeUpdate();
%>

<link rel="stylesheet" type="text/css" href="assets/css/alertify.core.css">
  <link rel="stylesheet" type="text/css" href="assets/css/alertify.default.css">
  <script type="text/javascript src="assets/js/alertify.js"></script>
  <script type="text/javascript src="assets/js/alertify.js"></script>
  <<script type="text/javascript">
  alertify.error("Success");
</script>
  <%
  response.sendRedirect("login.jsp");


    

    }
    catch(Exception e){
        out.print(e);
    }


%>
