/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import Model.User;
import static java.lang.System.out;

public class Database {
public static Connection getConnection(){
	java.sql.Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Blog","root","root");
	}catch(Exception e){e.printStackTrace();}
	return con;
}
public static int save(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into tbl_users (first_name,middle_name,lastname,user_name,password,remarks) values(?,?,?,?,?,?)");
		ps.setString(1,u.getFirstname());
		ps.setString(2,u.getMiddlename());
		ps.setString(3,u.getLastname());
                ps.setString(4,u.getUsername());
		ps.setString(5,u.getPassword());
                ps.setString(6,u. getRemarks());
		status=ps.executeUpdate();
	}catch(Exception e){e.printStackTrace();}
	return status;
}

public static boolean validate(User u){
		boolean status=false;
		try{
                    //PasswordHash passHash = new PasswordHash();  
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from tbl_users where user_name=? and password=?");
			ps.setString(1,u.getUsername());
			ps.setString(2,u.getPassword());
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			con.close();
		}catch(Exception e){e.printStackTrace();}
		return status;
	}

public static int update(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update tbl_users set first_name=?,middle_last=?,last_name=?,user_name=?,remarks= ? where id=?");
		ps.setString(1,u.getFirstname());
		ps.setString(2,u.getMiddlename());
		ps.setString(3,u.getLastname());
		//ps.setString(4,u.getPassword());
		ps.setString(4,u.getUsername());
                ps.setString(5,u. getRemarks());
		ps.setInt(6,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){e.printStackTrace();}
	return status;
}
public static int delete(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from tbl_users where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<User> getAllRecords(){
	List<User> list=new ArrayList<>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from tbl_users");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setId(rs.getInt("id"));
			u.setFirstname(rs.getString("first_name"));
			u.setMiddlename(rs.getString("middle_name"));
			u.setLastname(rs.getString("last_name"));
            u.setUsername(rs.getString("user_name"));
			u.setRemarks(rs.getString("remarks"));
			list.add(u);
		}
	}catch(Exception e){
            out.println(e);}
	return list;
}


public static User getRecordById(int id){
	User u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from tbl_users where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new User();
			u.setId(rs.getInt("id"));
			u.setFirstname(rs.getString("first_name"));
			u.setMiddlename(rs.getString("middle_last"));
			u.setLastname(rs.getString("last_name"));
			u.setUsername(rs.getString("user_name"));
			u.setRemarks(rs.getString("remarks"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}

}
