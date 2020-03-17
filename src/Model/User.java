/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author roh
 */


public class User {
private int id;
private String firstname,middlename,lastname,username,password,remarks;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getMiddlename() {
	return middlename;
}
public void setMiddlename(String middlename) {
	this.middlename = middlename;
}
public void setLastname(String lastname){
    this.lastname=lastname;
}
public String getLastname(){
    return lastname;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public String getUsername(){
    return username;
}

public void setUsername(String username){
    this.username=username;
}

public void setRemarks(String remarks){
    this.remarks=remarks;
}

public String getRemarks(){
    return remarks;
}
}
