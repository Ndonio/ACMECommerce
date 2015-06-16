package controller.user;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import java.util.Date;

import model.core.Address;
import model.core.AddressFacade;
import model.user.Customer;
import model.user.CustomerFacade;

@ManagedBean
public class CustomerController {

	@EJB(beanName="customerFacade")
	private CustomerFacade customerFacade;
	
	@EJB(beanName="addressFacade")
	private AddressFacade addressFacade;
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String firstname;
	private String lastname;
	private Date birthday;
	private String email;
	private String password;
	
	private String street;
	private String city;
	private String region;
	private String zipcode;
	private String state;
	
	private Customer customer;
	private Address address;
	
	@ManagedProperty(value = "#{customerSessionManager}")
	private CustomerSessionManager customerSession;
	
	public String createCustomer(){
		this.address = new Address(street,city,region,zipcode,state);
		this.customer = this.customerFacade.createCustomer(firstname, lastname, birthday, email, password, address);
        this.customerSession.login(customer);
        return "customerHome";
	}
	
	public String loginCustomer(){
		this.customer = this.customerFacade.retrieveCustomer(email, password);
		if(this.customer==null)
			return "loginCustomer";
		this.customerSession.login(customer);
		return "customerHome";
	}
	
	public String logoutCustomer(){
		this.customerSession.logout();
		return "home";
	}

	/**
	 * @return the customerFacade
	 */
	public CustomerFacade getCustomerFacade() {
		return customerFacade;
	}

	/**
	 * @param customerFacade the customerFacade to set
	 */
	public void setCustomerFacade(CustomerFacade customerFacade) {
		this.customerFacade = customerFacade;
	}

	/**
	 * @return the addressFacade
	 */
	public AddressFacade getAddressFacade() {
		return addressFacade;
	}

	/**
	 * @param addressFacade the addressFacade to set
	 */
	public void setAddressFacade(AddressFacade addressFacade) {
		this.addressFacade = addressFacade;
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
	 * @return the firstname
	 */
	public String getFirstname() {
		return firstname;
	}

	/**
	 * @param firstname the firstname to set
	 */
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	/**
	 * @return the lastname
	 */
	public String getLastname() {
		return lastname;
	}

	/**
	 * @param lastname the lastname to set
	 */
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	/**
	 * @return the birthday
	 */
	public Date getBirthday() {
		return birthday;
	}

	/**
	 * @param birthday the birthday to set
	 */
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the street
	 */
	public String getStreet() {
		return street;
	}

	/**
	 * @param street the street to set
	 */
	public void setStreet(String street) {
		this.street = street;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the region
	 */
	public String getRegion() {
		return region;
	}

	/**
	 * @param region the region to set
	 */
	public void setRegion(String region) {
		this.region = region;
	}

	/**
	 * @return the zipcode
	 */
	public String getZipcode() {
		return zipcode;
	}

	/**
	 * @param zipcode the zipcode to set
	 */
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}

	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
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
	 * @return the address
	 */
	public Address getAddress() {
		return address;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(Address address) {
		this.address = address;
	}

	/**
	 * @return the customerSession
	 */
	public CustomerSessionManager getCustomerSession() {
		return customerSession;
	}

	/**
	 * @param customerSession the customerSession to set
	 */
	public void setCustomerSession(CustomerSessionManager customerSession) {
		this.customerSession = customerSession;
	}
	
}
