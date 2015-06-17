package controller.user;

import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import model.order.Order;
import model.user.Customer;


@ManagedBean(name="customerSessionManager")
@SessionScoped
public class CustomerSessionManager {

	private Customer currentCustomer;
	
	private List<Order> orders;
	
	private Order order;

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

	/**
	 * @return the orders
	 */
	public List<Order> getOrders() {
		return orders;
	}

	/**
	 * @param orders the orders to set
	 */
	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}
	
	/**
	 * @return the order
	 */
	public Order getOrder() {
		return order;
	}

	/**
	 * @param order the order to set
	 */
	public void setOrder(Order order) {
		this.order = order;
	}

	public void setCurrentCustomer(Customer currentCustomer) {
		this.currentCustomer = currentCustomer;
	}
	
}
