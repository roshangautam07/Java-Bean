<%-- 
    Document   : reg
    Created on : Aug 7, 2019, 6:45:59 AM
    Author     : roh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="assets/mystyle.css">
<meta charset="utf-8"/>
  <title>
    Registration
  </title>
  <!--src="valid.js" type="text/javascript"-->
  

</head>

<body>
    
    <%@page import="DB.Database,Model.User"%>

<%
String id=request.getParameter("id");
User u=Database.getRecordById(Integer.parseInt(id));
%>
  <div class="wrapper">
    <form name="myform" method="post" action="editusers.jsp">
        <input type="hidden" name="id" value="<%=u.getId() %>"/>
         <div id="heading">
           <p>
            User update
          </p>
        </div>

        <fieldset>
          <legend align="center">Login info</legend>
          <div class="input">
            <label>First Name </label>
            <input type="text" name="fname" id="fnames"  value="<%=u.getFirstname() %>" placeholder="Enter your first name"><br><br>
          </div>

         
          
          <div class="input">
            <label>Middle Name</label>
            <input type="text" name="mname" id="mnames" value="<%=u.getMiddlename() %>"placeholder="Enter your Middle name"><br><br>
          </div>
          
 <div class="input">
            <label>Last Name</label>
            <input type="text" name="lname" id="lnames" value="<%=u.getLastname() %>"placeholder="Enter your last name"><br><br>
          </div>
          
           <div class="input">
            <label>UserName</label>
            <input type="text" name="uname" id="lnames"value="<%=u.getUsername() %>" placeholder="Enter username"><br><br>
          </div>

         

          
          <div class="input">
            <label>Remarks</label>
            <input type="text" name="remarks" id="email" value="<%=u.getRemarks() %>" placeholder="Enter your Remarks"><br><br>
          </div>

          <div class="button">
            <input type="submit" value="submit" >
            <input type="reset" value="clear">
          </div>
        </fieldset>


          

        
            
             </form>
            </div>
        
  
</body>

</html>