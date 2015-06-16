package controller.order;

import javax.ejb.EJB;
import javax.enterprise.context.RequestScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import model.order.OrderLineFacade;
import model.product.Product;
import model.product.ProductFacade;

@ManagedBean(name="orderLineController")
@RequestScoped
public class OrderLineController {


	@EJB(beanName="orderLineFacade")
	private OrderLineFacade orderLineFacade;
	
	@EJB(beanName="productFacade")
	private ProductFacade productFacade;
	
    @ManagedProperty(value="orderSessionManager")
    private OrderSessionManager orderSessionManager;
	
    @ManagedProperty(value="#{param.id}")
    private Long id;
    
    private String productCode;
            
	private int quantity;
	
	public String createOrderLine(){
		Product product = this.productFacade.getProduct(this.productCode);
		this.orderLineFacade.createOrderLine(product, this.quantity);
		return "customerHome";
	}
	
	public String findProduct(){
		Product product = this.productFacade.getProduct(id);
	    this.orderSessionManager.setProduct(product);
	    return "productToAddDetail";
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

	/**
	 * @return the productCode
	 */
	public String getProductCode() {
		return productCode;
	}

	/**
	 * @param productCode the productCode to set
	 */
	public void setProductCode(String productCode) {
		this.productCode = productCode;
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
	
}
