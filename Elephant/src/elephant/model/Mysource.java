package elephant.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

/**
 * Mysource entity. @author MyEclipse Persistence Tools
 */

public class Mysource implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name;
	private Set<Xreview> xreviews = new HashSet<Xreview>(0);

	// Constructors

	/** default constructor */
	public Mysource() {
	}

	/** full constructor */
	public Mysource(String name, Set<Xreview> xreviews) {
		this.name = name;
		this.xreviews = xreviews;
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
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="mysource")
	public Set<Xreview> getXreviews() {
		return this.xreviews;
	}

	public void setXreviews(Set<Xreview> xreviews) {
		this.xreviews = xreviews;
	}

}