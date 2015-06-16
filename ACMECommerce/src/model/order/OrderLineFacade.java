package model.order;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import model.product.Product;

@Stateless(name="orderLineFacade")
public class OrderLineFacade {

	@PersistenceContext(unitName="unit-siwProject")
	private EntityManager em;
	
	public OrderLine createOrderLine(Product product, int quantity){
		OrderLine orderLine = new OrderLine(product, quantity);
		this.em.persist(orderLine);
		return orderLine;
	}
	
}
