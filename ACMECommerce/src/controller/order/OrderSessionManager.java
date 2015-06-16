package controller.order;

import java.util.List;

import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ManagedBean;

import model.order.Order;
import model.order.OrderLine;
import model.product.Product;

@ManagedBean(name="orderSessionManager")
@SessionScoped 
public class OrderSessionManager {

	private Order currentOrder;
	
	private OrderLine orderLine;

	private List<Product> products;
	private Product product;
	/**
	 * @return the currentOrder
	 */
	public Order getCurrentOrder() {
		return currentOrder;
	}
	/**
	 * @param currentOrder the currentOrder to set
	 */
	public void setCurrentOrder(Order currentOrder) {
		this.currentOrder = currentOrder;
	}
	/**
	 * @return the orderLine
	 */
	public OrderLine getOrderLine() {
		return orderLine;
	}
	/**
	 * @param orderLine the orderLine to set
	 */
	public void setOrderLine(OrderLine orderLine) {
		this.orderLine = orderLine;
	}
	/**
	 * @return the products
	 */
	public List<Product> getProducts() {
		return products;
	}
	/**
	 * @param products the products to set
	 */
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	/**
	 * @return the product
	 */
	public Product getProduct() {
		return product;
	}
	/**
	 * @param product the product to set
	 */
	public void setProduct(Product product) {
		this.product = product;
	}
	

}