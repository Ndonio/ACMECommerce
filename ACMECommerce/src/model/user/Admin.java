package model.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity
public class Admin {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@Column(nullable = false, unique = true)
	private String email;
	
	@Column(nullable = false)
	private String password;

	
	/**
	 * @param password
	 * @return true if admin's password is equal to password
	 */
	public void checkPassword(String password) throws Exception{
		boolean trueCond = this.password.equals(password);
		if(!trueCond)
			throw new Exception();
	}
		
	
	/**
	 * SETTERS AND GETTERS 
	 **/
	
	/**
	 * Create a generic Admin Object;
	 */
	public Admin(){}
	
	/**
	 * @param email
	 * @param password
	 */
	public Admin(String email, String password) {
		this.email = email;
		this.password = password;
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
	
}
