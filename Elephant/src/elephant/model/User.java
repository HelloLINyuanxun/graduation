package elephant.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name;
	private String pass;
	private String sex;
	private String phone;
	private String email;
	private Set<Lreview> lreviews = new HashSet<Lreview>(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(String name, String pass, String sex, String phone,
			String email, Set<Lreview> lreviews) {
		this.name = name;
		this.pass = pass;
		this.sex = sex;
		this.phone = phone;
		this.email = email;
		this.lreviews = lreviews;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="user")
	public Set<Lreview> getLreviews() {
		return this.lreviews;
	}

	public void setLreviews(Set<Lreview> lreviews) {
		this.lreviews = lreviews;
	}

}