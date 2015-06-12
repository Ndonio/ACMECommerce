package model.user;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

@Stateless(name="adminFacade")
public class AdminFacade {

	@PersistenceContext(unitName="unit-siwProject")
	private EntityManager em;

	public Admin createAdmin(String email, String password){
		Admin admin = new Admin(email,password);
		this.em.persist(admin);
		return admin;
	}

	public Admin retrieveAdmin(String email, String password){
		Admin admin;
		Query q= this.em.createQuery("SELECT a FROM Admin a WHERE a.email =:email", Admin.class);
		q.setParameter("email", email);
		try{
			admin =(Admin)q.getSingleResult();
			admin.checkPassword(password);
				return admin;
		}
		catch (Exception e){
			admin = null;
		}	
		return admin;
	}

	public Admin findAdmin(Long id){
		return this.em.find(Admin.class, id); 	
	}
	
	public Admin removeAdmin(Long id){
		Admin a = findAdmin(id);
		this.em.remove(a);
		return a;
	}

}
