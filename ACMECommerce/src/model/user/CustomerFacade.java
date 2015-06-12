package model.user;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import model.core.Address;

import java.util.Date;

@Stateless(name="customerFacade")
public class CustomerFacade {

	@PersistenceContext(unitName="unit-siwProject")
	private EntityManager em;
	
	public Customer createCustomer(String firstname, String lastname, Date birthday, String email, String password, Address address){
		Customer customer = new Customer(firstname,lastname,birthday,email,password,address);
		em.persist(customer);
		return customer;
	}

	public Customer retriveCustomer(String email, String password) {
		Customer customer;
		Query q= this.em.createQuery("SELECT a FROM Customer a WHERE a.email =:email", Customer.class);
		q.setParameter("email", email);
		try{
			customer =(Customer)q.getSingleResult();
			customer.checkPassword(password);
				return customer;
		}
		catch (Exception e){
			customer = null;
		}	
		return customer;
	}
}

