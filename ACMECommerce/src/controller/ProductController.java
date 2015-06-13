package controller;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import model.product.Product;
import model.product.ProductFacade;

@ManagedBean
public class ProductController {
	
	@EJB(beanName="productFacade")
	private ProductFacade productFacade;

	@ManagedProperty(value="#{param.id}")
    private Long id;
	private String name;
	private String code;
	private Float price;
	private String description;
	
	private Product product;
	private List<Product> productList;
	
	public String createProduct(){
		this.product = this.productFacade.createProduct(name, code, price, description);
	    return "productViewAdmin";
	}
	
	public String listProducts(){
		this.productList = this.productFacade.getAllProducts();
		return "productList";
	}
	
	public String findProduct() {
		this.product = this.productFacade.getProduct(id);
		return "productView";
	}
	
	public String findProduct(Long id) {
		this.product = this.productFacade.getProduct(id);
		return "productView";
	}

	
	/**
	 * GETTERS AND SETTERS 
	 **/
	
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
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code the code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the price
	 */
	public Float getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(Float price) {
		this.price = price;
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

	/**
	 * @return the productsList
	 */
	public List<Product> getProductList() {
		return productList;
	}

	/**
	 * @param productsList the productsList to set
	 */
	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}
	
	
}
