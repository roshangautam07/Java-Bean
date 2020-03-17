<%-- 
    Document   : reg
    Created on : Aug 7, 2019, 6:45:59 AM
    Author     : roh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="assets/css/mystyle.css">
  <link rel="stylesheet" type="text/css" href="assets/css/alertify.core.css">
  <link rel="stylesheet" type="text/css" href="assets/css/alertify.default.css">
  <script type="text/javascript src="assets/js/alertify.js"></script>
  <script type="text/javascript src="assets/js/alertify.js"></script>
<meta charset="utf-8"/>
  <title>
    Registration
  </title>
  <!--src="valid.js" type="text/javascript"-->
  

</head>

<body>
  <div class="wrapper">
    <form name="myform" method="post" action="regdob.jsp">
         <div id="heading">
           <p>
            User Registration System
          </p>
        </div>

        <fieldset>
          <legend align="center">Login info</legend>
          <div class="input">
            <label>First Name </label>
            <input type="text" name="fname" id="fnames" placeholder="Enter your first name"><br><br>
          </div>

         
          
          <div class="input">
            <label>Middle Name</label>
            <input type="text" name="mname" id="mnames" placeholder="Enter your Middle name"><br><br>
          </div>
          
 <div class="input">
            <label>Last Name</label>
            <input type="text" name="lname" id="lnames" placeholder="Enter your last name"><br><br>
          </div>
          
           <div class="input">
            <label>UserName</label>
            <input type="text" name="uname" id="lnames" placeholder="Enter username"><br><br>
          </div>

         

          <div class="input">
            <label>Password</label>
            <input type="password" name="password" id="pass" placeholder="Enter your password"><br><br>
          </div>
          
          <div class="input">
            <label>Remarks</label>
            <input type="text" name="remarks" id="email" placeholder="Enter your Remarks"><br><br>
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