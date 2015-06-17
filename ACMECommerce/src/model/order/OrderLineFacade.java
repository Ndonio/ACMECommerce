package model.order;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import model.product.Product;

@Stateless(name="orderLineFacade")
public class OrderLineFacade {

	@PersistenceContext(unitName="unit-siwProject")
	private EntityManager em;
	
	public OrderLine createOrderLine(Long idOrder, Product product, int quantity){
		OrderLine orderLine = new OrderLine(product, quantity);
		Order order = this.em.find(Order.class, idOrder);
	//	order.addOrderLine(orderLine);
		this.em.persist(orderLine);
		this.em.merge(order);
		return orderLine;
	}
	

	
}
