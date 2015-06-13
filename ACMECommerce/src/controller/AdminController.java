package controller;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import model.user.Admin;
import model.user.AdminFacade;

@ManagedBean
public class AdminController {
	
	@EJB(beanName="adminFacade")
	AdminFacade adminFacade;
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String email;
	private String password;
	
	private Admin admin;
	
	//TODO NEW
	@ManagedProperty(value = "#{adminSessionManager}")
	private AdminSessionManager session;
	
	public String createAdmin(){
		this.admin = this.adminFacade.createAdmin(email, password);
		this.session.login(admin);//TODO NEW!
		return "adminHome";
	}
	
	public String loginAdmin(){
		this.admin = this.adminFacade.retrieveAdmin(email, password);
		if(this.admin==null)
			return "loginAdmin";
		this.session.login(admin);//TODO NEW!
		return "adminHome";
	}
	
	//TODO NEW!
	public String logoutAdmin(){
		this.session.logout();
		return "home";
	}

	/**
	 * @return the adminFacade
	 */
	public AdminFacade getAdminFacade() {
		return adminFacade;
	}

	/**
	 * @param adminFacade the adminFacade to set
	 */
	public void setAdminFacade(AdminFacade adminFacade) {
		this.adminFacade = adminFacade;
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

	/**
	 * @return the admin
	 */
	public Admin getAdmin() {
		return admin;
	}

	/**
	 * @param admin the admin to set
	 */
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	/*TODO NEW!!! */
	/**
	 * @return the session
	 */
	public AdminSessionManager getSession() {
		return session;
	}

	/**
	 * @param session the session to set
	 */
	public void setSession(AdminSessionManager session) {
		this.session = session;
	}

}
