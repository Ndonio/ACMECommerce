package model.core;

import javax.persistence.*;

/**
* The Address class represents address.
* An address is a collection of information used for describing the location of a customer or a provider in our case.
* The location is described by a street, a city, a region, a zipcode and a state.
* */

@Entity
public class Address {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;

	@Column(nullable=false)
	private String street;

	@Column(nullable=false)
	private String city;

	@Column(nullable=false)
	private String region;

	@Column(nullable=false)
	private String zipcode;

	@Column(nullable=false)
	private String state;

	/**
	 * Constructs a newly allocated Address object that represents a generic Address.
	 * */
	public Address() {}

	/**
	 * Constructs a newly allocated Address object that represents a specified Address made by a specific
	 * street, city, region, zipcode and state.
	 * @param street
	 * @param city
	 * @param region
	 * @param zipcode
	 * @param state
	 */
	public Address(String street, String city, String region, String zipcode,
			String state) {
		this.street = street;
		this.city = city;
		this.region = region;
		this.zipcode = zipcode;
		this.state = state;
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
	 * @return the state
	 */
	public String getState() {
		return region;
	}

	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.region = state;
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
	 * @return the country
	 */
	public String getCountry() {
		return state;
	}

	/**
	 * @param country the country to set
	 */
	public void setCountry(String country) {
		this.state = country;
	}

	/**
	 * @return the Address's id
	 */
	public Long getId() {
		return id;
	}

	@Override
	public String toString() {
		return street + ", " + city + ", "
				+ region + ", " + zipcode + ", " + state;
	}

	/**
	 * Returns a hash code for this Address. The hash code for a Address object is computed as the sum of the 
	 * hash code of his properties.
	 * @return hash code value of this address
	 * */
	@Override
	public int hashCode() {
		return (this.city.hashCode()+this.state.hashCode()+this.region.hashCode()+
				this.street.hashCode()+this.zipcode.hashCode());
	}

	/** 
	 *@param obj - the object to compare with.
	 *@return true if the objects are the same; false otherwise. 
	 **/
	@Override
	public boolean equals(Object obj) {
		if(obj==null){return false;}
		Address that= (Address) obj;
		return this.city.equals(that.getCity())&&
				this.state.equals(that.getCountry())&&
				this.region.equals(that.getState())&&
				this.street.equals(that.getStreet())&&
				this.zipcode.equals(that.getZipcode());
	}

}