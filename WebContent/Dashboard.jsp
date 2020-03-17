<%-- 
    Document   : Dashboard
    Created on : Aug 12, 2019, 5:45:53 PM
    Author     : roh
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB.Database,Model.User.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Accordion Menu for All Purpose</title>		
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="style3.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<style type="text/css">
	.accordion .card {
		color: #424e5d;
		border: 1px solid #dddddd;
	}
	.accordion .card a {
		color: #424e5d;
		text-decoration: none;				
	}
	.accordion .card-header {
		background: linear-gradient(#fff, #f1f1f1);
		padding: .75rem 1rem;
		position: relative;
	}
	.accordion .card-header:hover {
		background: linear-gradient(#f1f1f1, #e8e8e8);
	}
	.accordion .card-header h2 {
		font-size: 1rem;
	}
	.accordion .fa {
		width: 20px;
		margin-right: .25rem;
	}
	.accordion .card-header a {
		float: left;
		width: 100%;
		cursor: pointer;
	}
	.accordion .toggle {
		font-size: .8rem;
		line-height: .8rem;
		cursor: pointer;
		opacity: 0.7;
		position: absolute;
		right: 16px;
		top: 16px;
		width: 14px;
		margin: 0;
	}
	.accordion .toggle:hover {
		opacity: 1;
	}
	.accordion .card-body {
		padding: 0;
	}
	.accordion .list-group-item {				
		border-radius: 0;
		border-width: 1px 0 1px 0;
		padding-left: 30px;
		background: #d6dbe0;
		font-weight: 500;
	}
	.accordion .list-group-item:hover {
		background: #007bff;
	}
	.accordion .list-group-item:hover a {
		color: #fff !important;
	}
	.accordion .list-group-item:hover .badge{
		background: #fff;
		color: #007bff;
	}
	.accordion .list-group-item a {
		color: #61656b;
		display: block;
	}
	.accordion .list-group-item .badge {
		float: right;
		min-width: 36px;
	}
	.accordion .rotate{
		transform: rotate(180deg); 
	}


	div.blueTable {
  border: 1px solid #1C6EA4;
  background-color: #EEEEEE;
  width: 100%;
  text-align: left;
  border-collapse: collapse;
}
.divTable.blueTable .divTableCell, .divTable.blueTable .divTableHead {
  border: 1px solid #AAAAAA;
  padding: 3px 2px;
}
.divTable.blueTable .divTableBody .divTableCell {
  font-size: 13px;
}
.divTable.blueTable .divTableRow:nth-child(even) {
  background: #D0E4F5;
}
.divTable.blueTable .divTableHeading {
  background: #1C6EA4;
  background: -moz-linear-gradient(top, #5592bb 0%, #327cad 66%, #1C6EA4 100%);
  background: -webkit-linear-gradient(top, #5592bb 0%, #327cad 66%, #1C6EA4 100%);
  background: linear-gradient(to bottom, #5592bb 0%, #327cad 66%, #1C6EA4 100%);
  border-bottom: 2px solid #444444;
}
.divTable.blueTable .divTableHeading .divTableHead {
  font-size: 15px;
  font-weight: bold;
  color: #FFFFFF;
  text-align: center;
  border-left: 2px solid #D0E4F5;
}
.divTable.blueTable .divTableHeading .divTableHead:first-child {
  border-left: none;
}

.blueTable .tableFootStyle {
  font-size: 14px;
  font-weight: bold;
  color: #FFFFFF;
  background: #D0E4F5;
  background: -moz-linear-gradient(top, #dcebf7 0%, #d4e6f6 66%, #D0E4F5 100%);
  background: -webkit-linear-gradient(top, #dcebf7 0%, #d4e6f6 66%, #D0E4F5 100%);
  background: linear-gradient(to bottom, #dcebf7 0%, #d4e6f6 66%, #D0E4F5 100%);
  border-top: 2px solid #444444;
}
.blueTable .tableFootStyle {
  font-size: 14px;
}
.blueTable .tableFootStyle .links {
	 text-align: right;
}
.blueTable .tableFootStyle .links a{
  display: inline-block;
  background: #1C6EA4;
  color: #FFFFFF;
  padding: 2px 8px;
  border-radius: 5px;
}
.blueTable.outerTableFooter {
  border-top: none;
}
.blueTable.outerTableFooter .tableFootStyle {
  padding: 3px 5px; 
}
/* DivTable.com */
.divTable{ display: table; }
.divTableRow { display: table-row; }
.divTableHeading { display: table-header-group;}
.divTableCell, .divTableHead { display: table-cell;}
.divTableHeading { display: table-header-group;}
.divTableFoot { display: table-footer-group;}
.divTableBody { display: table-row-group;}
	
	

</style>
<script>
	$(document).ready(function(){			
		// Toggle plus minus icon on show hide of collapse element
		$(".collapse").on('show.bs.collapse', function(){
			$(this).parent(".card").find(".toggle").addClass("rotate");
		}).on('hide.bs.collapse', function(){
			$(this).parent(".card").find(".toggle").removeClass("rotate");
		});
	});
</script>
</head>
<body>
    
    <%
        String username=(String)session.getAttribute("username");
        
        //redirect user to login page if not logged in
        if(username==null){
        	response.sendRedirect("login.jsp");
        }
        %>
    
        
    
        
<div class="container mt-5">

		<div class="header">
				<h1>Welcome <%=username%> </h1>
				

	<div class="row">
		<div class="col-lg-3">
			<div class="accordion mb-2" id="accordionExample">
				<div class="card">
					<div class="card-header" id="headingOne">
						<h2 class="mb-0">									
							<a data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
								<span><i class="fa fa-user"></i> Account</span>
								<i class="fa fa-chevron-down toggle"></i>
							</a>
						</h2>
					</div>
					<div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
						<div class="card-body">
							<ul class="list-group">
								<li class="list-group-item"><a href="editprofile.php"><i class="fa fa-pencil"></i> Edit Info</a></li>
								<li class="list-group-item"><a href="Changepass.php"><i class="fa fa-key"></i> Change Password</a></li>
								<li class="list-group-item"><a href="#" class="text-danger"><i class="fa fa-trash"></i> Delete Account</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingTwo">
						<h2 class="mb-0">									
							<a data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
								<span><i class="fa fa-comments"></i> Messages</span>
								<i class="fa fa-chevron-down toggle rotate"></i>
							</a>
						</h2>
					</div>
					<div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionExample">
						<div class="card-body">
							<ul class="list-group">
								<li class="list-group-item"><a href="#"><i class="fa fa-inbox"></i> Inbox <span class="badge badge-pill badge-primary">20</span></a></li>
								<li class="list-group-item"><a href="#"><i class="fa fa-paper-plane"></i> Sent</a></li>
								<li class="list-group-item"><a href="#"><i class="fa fa-file-text"></i> Drafts <span class="badge badge-pill badge-info">15</span></a></li>
								<li class="list-group-item"><a href="#"><i class="fa fa-trash"></i> Trash</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingThree">
						<h2 class="mb-0">									
							<a data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
								<span><i class="fa fa-bar-chart"></i> Reports</span>
								<i class="fa fa-chevron-down toggle"></i>
							</a>
						</h2>
					</div>
					<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
						<div class="card-body">
							<ul class="list-group">										
								<li class="list-group-item"><a href="#"><i class="fa fa-dollar"></i> Sales</a></li>
								<li class="list-group-item"><a href="#"><i class="fa fa-tags"></i> Orders</a></li>
								<li class="list-group-item"><a href="#"><i class="fa fa-plane"></i> Shipment</a></li>
								<li class="list-group-item"><a href="#"><i class="fa fa-users"></i> Customers</a></li>										
							</ul>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingFour">
						<h2 class="mb-0">									
							<a data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
								<span><i class="fa fa-cog"></i> Settings</span>
								<i class="fa fa-chevron-down toggle"></i>
							</a>
						</h2>
					</div>
					<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
						<div class="card-body">
							<ul class="list-group">
								<li class="list-group-item"><a href="#"><i class="fa fa-font"></i> Typography</a></li>
								<li class="list-group-item"><a href="#"><i class="fa fa-bell"></i> Notifications</a></li>
								<li class="list-group-item"><a href="#"><i class="fa fa-map"></i> Maps</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingFive">
						<h2 class="mb-0"><a href="logout.jsp"><i class="fa fa-power-off"></i> Logout</a></h2>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-9">

		<div class="divTable blueTable">
		
		<%
		//Database user = new Database();
		List<User> list = Database.getAllRecords();
		//Iterator<User> itr = list.iterator();
		%>
<div class="divTableHeading">
<div class="divTableRow">
<div class="divTableHead">ID</div>
<div class="divTableHead">FirstName</div>
<div class="divTableHead">MiddleName</div>
<div class="divTableHead">LastName</div>
<div class="divTableHead">Username</div>
<div class="divTableHead">Remarks</div>
<div class="divTableHead">Action</div>
</div>
</div>
<div class="divTableBody">

   
        
   <%for (User u : list) {
    

    %>    
        
    

<div class="divTableRow">
    <div class="divTableCell"><%=u.getId() %></div>
<div class="divTableCell"><%=u.getFirstname() %></div>
<div class="divTableCell"><%=u.getMiddlename() %></div>
<div class="divTableCell"><%=u.getLastname() %></div>
<div class="divTableCell"><%=u.getUsername() %></div>
<div class="divTableCell"><%=u.getRemarks() %></div>
<div class="divTableCell"> <a href="updateusers.jsp?id=<%=u.getId() %>" class="link"><img title="Edit" src="icon/edit.png"/></a> 
    <a href="deleteuser.jsp?id=<%=u.getId() %>" class="link"><img name="delete" id="delete" title="Delete" onclick="return confirm('Are you sure you want to delete?')" src="icon/delete.png"/></a></div>
</div>

<%} %>

</div>
</div>
<div class="blueTable outerTableFooter">
<div class="tableFootStyle">
<div class="links"><a href="#">&laquo;</a> <a class="active" href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">&raquo;</a></div>
</div>
</div>

		
		</div>
	</div>
</div>
</body>
</html>                            