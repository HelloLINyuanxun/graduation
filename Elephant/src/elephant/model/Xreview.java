package elephant.model;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * Xreview entity. @author MyEclipse Persistence Tools
 */

public class Xreview implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Mysource mysource;
	private Product product;
	private String content;
	private String date;
	private String reviewer;

	// Constructors

	/** default constructor */
	public Xreview() {
	}

	/** full constructor */
	public Xreview(Mysource mysource, Product product, String content,
			String date, String reviewer) {
		this.mysource = mysource;
		this.product = product;
		this.content = content;
		this.date = date;
		this.reviewer = reviewer;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "mysource.id")
	public Mysource getMysource() {
		return this.mysource;
	}

	public void setMysource(Mysource mysource) {
		this.mysource = mysource;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "product.id")
	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getReviewer() {
		return this.reviewer;
	}

	public void setReviewer(String reviewer) {
		this.reviewer = reviewer;
	}

}