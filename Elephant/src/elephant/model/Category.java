package elephant.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 * Category entity. @author MyEclipse Persistence Tools
 */

public class Category implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Maneger maneger;
	private String type;
	private Boolean hot;
	private Set<Product> products = new HashSet<Product>(0);

	// Constructors

	/** default constructor */
	public Category() {
	}

	/** full constructor */
	public Category(Maneger maneger, String type, Boolean hot,
			Set<Product> products) {
		this.maneger = maneger;
		this.type = type;
		this.hot = hot;
		this.products = products;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "maneger.id")
	public Maneger getManeger() {
		return this.maneger;
	}

	public void setManeger(Maneger maneger) {
		this.maneger = maneger;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Boolean getHot() {
		return this.hot;
	}

	public void setHot(Boolean hot) {
		this.hot = hot;
	}
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="category")
	public Set<Product> getProducts() {
		return this.products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

}