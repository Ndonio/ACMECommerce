package model.user;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import java.util.Date;

@Stateless(name="customerFacade")
public class CustomerFacade {

	@PersistenceContext(unitName="unit-siwProject")
	private EntityManager em;
	
	public Customer createCustomer(String firstname, String lastname, Date birthday, String email, String password){
		Customer customer = new Customer(firstname,lastname,birthday,email,password);
		em.persist(customer);
		return customer;
	}
}
