
package model.order;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import model.product.Product;

/**
 *
 */
@Entity
public class OrderLine {
 
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private int quantity;
	
	@ManyToOne
	private Product Product;
	
	public OrderLine(){}
	
	public OrderLine(Product product, int quantity){
		this.Product = product;
		this.quantity = quantity; 
	}
	
	/**
	 * GETTERS AND SETTERS 
	 **/
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
	 * @return the product
	 */
	public Product getProduct() {
		return Product;
	}

	/**
	 * @param product the product to set
	 */
	public void setProduct(Product product) {
		Product = product;
	}
	
	
 
}
