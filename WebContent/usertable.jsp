<%@page import="java.sql.Connection"%>
<div class="divTable blueTable">
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

    <%
        
try{
    Connection con = Database.getConnection();
    Statement stm = con.createStatement();
    String sql ="select * from tbl_users";
    ResultSet rs = stm.executeQuery(sql);
    while(rs.next()){
        
    
    

        
        %>
    

<div class="divTableRow">
    <div class="divTableCell"><%= rs.getInt("id") %></div>
<div class="divTableCell"><%= rs.getString("first_name") %></div>
<div class="divTableCell"><%= rs.getString("middle_last") %></div>
<div class="divTableCell"><%= rs.getString("last_name") %></div>
<div class="divTableCell"><%= rs.getString("user_name") %></div>
<div class="divTableCell"><%= rs.getString("remarks") %></div>
<div class="divTableCell"> <a href="updateuser.jsp?id=<%= rs.getInt("id") %>" class="link"><img title="Edit" src="icon/edit.png"/></a> 
    <a href="deleteuser.jsp?id=<%= rs.getInt("id") %>" class="link"><img name="delete" id="delete" title="Delete" onclick="return confirm('Are you sure you want to delete?')" src="icon/delete.png"/></a></div>
</div>
<%
    }
    }catch(Exception e){
out.print(e);

}
%>
</div>
</div>
<div class="blueTable outerTableFooter">
<div class="tableFootStyle">
<div class="links"><a href="#">&laquo;</a> <a class="active" href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">&raquo;</a></div>
</div>
</div>