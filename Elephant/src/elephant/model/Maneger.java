package elephant.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

/**
 * Maneger entity. @author MyEclipse Persistence Tools
 */

public class Maneger implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String login;
	private String name;
	private String pass;

	private Set<Category> categories = new HashSet<Category>(0);

	// Constructors

	/** default constructor */
	public Maneger() {
	}

	/** full constructor */
	public Maneger(String login, String name, String pass,
			Set<Category> categories) {
		this.login = login;
		this.name = name;
		this.pass = pass;
		this.categories = categories;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLogin() {
		return this.login;
	}

	public void setLogin(String login) {
		this.login = login;
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

	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="maneger")
	public Set<Category> getCategories() {
		return this.categories;
	}

	public void setCategories(Set<Category> categories) {
		this.categories = categories;
	}

	@Override
	public String toString() {
		return "Maneger [id=" + id + ", login=" + login + ", name=" + name
				+ ", pass=" + pass + "]";
	}

}