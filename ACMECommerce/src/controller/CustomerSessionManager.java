package controller;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import model.user.Customer;


@ManagedBean(name="customerSessionManager")
@SessionScoped
public class CustomerSessionManager {

	private Customer currentCustomer;
	
	public void logout(){
		this.currentCustomer=null;
	}
	
	public void login(Customer customer){
		this.currentCustomer=customer;
	}
	
	public Customer getCurrentCustomer(){
		return this.currentCustomer;
	}
	
	public boolean isOnline(){
		return this.currentCustomer==null;
	}
	
}
