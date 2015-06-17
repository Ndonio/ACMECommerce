package controller.order;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;

import controller.user.CustomerSessionManager;
import controller.order.OrderSessionManager;
import model.order.Order;
import model.order.OrderFacade;
import model.order.OrderLine;
import model.order.OrderLineFacade;
import model.product.Product;
import model.product.ProductFacade;


@ManagedBean(name="orderController", eager=true)
@RequestScoped
public class OrderController {

	@EJB(beanName="orderFacade")
	private OrderFacade orderFacade;

	@EJB(beanName="productFacade")
	private ProductFacade productFacade;
	
	//TODO: FIXME: move all on OrderLineController!!!!
	@EJB(beanName="orderLineFacade")
	private OrderLineFacade orderLineFacade;

	@ManagedProperty(value="#{param.productId}")
	private Long productId; 
//	@ManagedProperty(value="#{param.quantity}")
	private int quantity;
	//Fine Da spostare in OrderLineController
	
	@ManagedProperty(value="#{orderId}")
	private Long orderId; 
	 
	@ManagedProperty(value="#{customerSessionManager}")
	private CustomerSessionManager customerSessionManager;

	@ManagedProperty(value="#{orderSessionManager}")
	private OrderSessionManager orderSessionManager;


	public String listOrders(){
		List<Order> orders = this.orderFacade.listCustomerOrder(this.customerSessionManager.getCurrentCustomer().getId());
		this.customerSessionManager.setOrders(orders);
		return "orderList";
	}
	
	public String createOrder(){
		Order order = this.orderFacade.createOrder(this.customerSessionManager.getCurrentCustomer().getId());
		this.orderSessionManager.setCurrentOrder(order);
		return "newOrder";
	}

	public String addProduct(){
		List<Product> products = this.productFacade.getAllProducts();
		this.orderSessionManager.setProducts(products);
		return "productListOrder";	
	}
	
	public String findProduct(){
		Product product = this.productFacade.getProduct(productId);
	    this.orderSessionManager.setProduct(product);
	    return "productToShopDetail";
	}

	public String createOrderLine(){
		Product product = this.orderSessionManager.getProduct();
        Order order = this.orderSessionManager.getCurrentOrder();
        this.orderFacade.addOrderLine(order, product, quantity);
		return "customerHome";
	}
	
	public String cancelOrder(){
		Long orderId = this.orderSessionManager.getCurrentOrder().getId();
		this.orderFacade.removeOrder(orderId);
		this.orderSessionManager.setCurrentOrder(null);
		return "customerHome";
	}
	

	/**
	 *GETTERS AND SETTERS
	 **/
	

	/**
	 * @return the orderFacade
	 */
	public OrderFacade getOrderFacade() {
		return orderFacade;
	}

	/**
	 * @param orderFacade the orderFacade to set
	 */
	public void setOrderFacade(OrderFacade orderFacade) {
		this.orderFacade = orderFacade;
	}

	/**
	 * @return the productFacade
	 */
	public ProductFacade getProductFacade() {
		return productFacade;
	}

	/**
	 * @param productFacade the productFacade to set
	 */
	public void setProductFacade(ProductFacade productFacade) {
		this.productFacade = productFacade;
	}

	/**
	 * @return the orderLineFacade
	 */
	public OrderLineFacade getOrderLineFacade() {
		return orderLineFacade;
	}

	/**
	 * @param orderLineFacade the orderLineFacade to set
	 */
	public void setOrderLineFacade(OrderLineFacade orderLineFacade) {
		this.orderLineFacade = orderLineFacade;
	}

	/**
	 * @return the productId
	 */
	public Long getProductId() {
		return productId;
	}

	/**
	 * @param productId the productId to set
	 */
	public void setProductId(Long productId) {
		this.productId = productId;
	}

	/**
	 * @return the quantity
	 */
	public int getQuantity() {
		return quantity;
	}

	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	/**
	 * @return the orderId
	 */
	public Long getOrderId() {
		return orderId;
	}

	/**
	 * @param orderId the orderId to set
	 */
	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	/**
	 * @return the customerSessionManager
	 */
	public CustomerSessionManager getCustomerSessionManager() {
		return customerSessionManager;
	}

	/**
	 * @param customerSessionManager the customerSessionManager to set
	 */
	public void setCustomerSessionManager(
			CustomerSessionManager customerSessionManager) {
		this.customerSessionManager = customerSessionManager;
	}

	/**
	 * @return the orderSessionManager
	 */
	public OrderSessionManager getOrderSessionManager() {
		return orderSessionManager;
	}

	/**
	 * @param orderSessionManager the orderSessionManager to set
	 */
	public void setOrderSessionManager(OrderSessionManager orderSessionManager) {
		this.orderSessionManager = orderSessionManager;
	}
	
}
