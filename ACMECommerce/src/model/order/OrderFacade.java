package model.order;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import model.product.Product;
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
		customer.addOrder(order);
		this.em.persist(order);
		this.em.merge(customer);
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
          Customer customer = this.em.find(Customer.class, customerId);
          return customer.getOrders();
//		TypedQuery<Order> q = em.createQuery("SELECT o FROM Order o WHERE o.customer.Id =:customerId",Order.class);
//		q.setParameter("customerId", customerId);
//		List<Order> orders = q.getResultList();
//		return orders;
	}
	
	public void addOrderLine(Order order, Product product, int quantity){
		OrderLine orderLine = new OrderLine(product,quantity);
		order.addOrderLine(orderLine);
		this.em.persist(orderLine);
		this.em.merge(order);
	}
}
