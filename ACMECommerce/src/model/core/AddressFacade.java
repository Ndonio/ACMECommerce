package model.core;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless(name="addressFacade")
public class AddressFacade {
	
	@PersistenceContext(unitName="unit-siwProject")
	private EntityManager em;
	
	public Address createAddress(String street, String houseNumber, String zipCode, String city, String country){
		Address address = new Address(street, houseNumber, zipCode, city, country);
		this.em.persist(address);
		return address;
	}
}