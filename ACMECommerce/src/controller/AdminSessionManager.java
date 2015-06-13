package controller;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import model.user.Admin;


@ManagedBean(name="adminSessionManager")
@SessionScoped
public class AdminSessionManager {

	private Admin currentAdmin;
	
	public void logout(){
		this.currentAdmin=null;
	}
	
	public void login(Admin admin){
		this.currentAdmin=admin;
	}
	
	public Admin getCurrentAdmin(){
		return this.currentAdmin;
	}
	
	public boolean isOnline(){
		return this.currentAdmin==null;
	}
	
}
