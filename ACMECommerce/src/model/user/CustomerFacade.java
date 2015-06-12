package model.user;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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
}

