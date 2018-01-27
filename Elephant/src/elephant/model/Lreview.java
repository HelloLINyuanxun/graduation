package elephant.model;

import java.sql.Timestamp;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * Lreview entity. @author MyEclipse Persistence Tools
 */

public class Lreview implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private User user;
	private Product product;
	private String content;
	private Timestamp date;

	// Constructors

	/** default constructor */
	public Lreview() {
	}

	/** minimal constructor */
	public Lreview(Timestamp date) {
		this.date = date;
	}

	/** full constructor */
	public Lreview(User user, Product product, String content, Timestamp date) {
		this.user = user;
		this.product = product;
		this.content = content;
		this.date = date;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user.id")
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
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

	public Timestamp getDate() {
		return this.date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

}