package model.order;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

import model.product.Product;
import model.user.Customer;

/**
 * Class that represent an order object.
 * **/
@Entity
@Table(name="orders")
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Temporal(value = TemporalType.TIMESTAMP)
	private Date creationDate; 
	
	@Temporal(value = TemporalType.TIMESTAMP)
	private Date dispatchedDate; 
	
	@ManyToOne
	private Customer customer; //Customer - Orders;

	@OneToMany(fetch = FetchType.EAGER)
	@JoinColumn(name="order_id")
	private List<OrderLine> orderLines; //Order - OrderLines;

	public Order() {}

	public Order(Customer customer) {
		this.creationDate = new Date();
		this.customer = customer;
		this.orderLines= new ArrayList<OrderLine>();
	}
	
	
	public void addOrderLine(Product product, int quantity) {
		this.orderLines.add(new OrderLine(product, quantity));
	}
	
	/**
	 * SETTERS AND GETTERS
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
	 * @return the creationDate
	 */
	public Date getCreationDate() {
		return creationDate;
	}

	/**
	 * @param creationTime the creationDate to set
	 */
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	/**
	 * @return the customer
	 */
	public Customer getCustomer() {
		return customer;
	}

	/**
	 * @param customer the customer to set
	 */
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	/**
	 * @return the orderLines
	 */
	public List<OrderLine> getOrderLines() {
		return orderLines;
	}

	/**
	 * @param orderLines the orderLines to set
	 */
	public void setOrderLines(List<OrderLine> orderLines) {
		this.orderLines = orderLines;
	}

}