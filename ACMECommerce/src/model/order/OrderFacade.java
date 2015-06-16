package model.order;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import model.user.Customer;

@Stateless(name="orderFacade")
public class OrderFacade {

	@PersistenceContext(unitName="unit-siwProject")
	private EntityManager em;

	/**
	 * @param customer
	 * @return order
	 */
	public Order createOrder(Long customerId){
		Customer customer = this.em.find(Customer.class, customerId);
		Order order = new Order(customer);
		this.em.persist(order);
		return order;
	}
	
	/**
	 * @param orderId
	 * @return removed Order
	 */
	public Order removeOrder(Long orderId) {
		Order order = this.em.find(Order.class, orderId);
		this.em.remove(order);
		return order;
	}

	public List<Order> listCustomerOrder(Long customerId) {
		TypedQuery<Order> q = em.createQuery("SELECT o FROM Order o WHERE o.customer.Id =:customerId",Order.class);
		q.setParameter("customerId", customerId);
		List<Order> orders = q.getResultList();
		return orders;
	}
	


}
