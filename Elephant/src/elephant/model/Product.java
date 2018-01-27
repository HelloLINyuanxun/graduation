package elephant.model;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 * Product entity. @author MyEclipse Persistence Tools
 */

public class Product implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Category category;
	private String name;
	private Double price;
	private String pic;
	private String remark;
	private String xremark;
	private Timestamp date;
	private Boolean commend;
	private String url;
	private Integer pos;
	private Integer neg;
	private Integer nor;
	private Set<Xreview> xreviews = new HashSet<Xreview>(0);
	private Set<Lreview> lreviews = new HashSet<Lreview>(0);

	// Constructors

	/** default constructor */
	public Product() {
	}

	/** minimal constructor */
	public Product(Timestamp date) {
		this.date = date;
	}

	/** full constructor */
	public Product(Category category, String name, Double price, String pic,
			String remark, String xremark, Timestamp date, Boolean commend,
			String url, Integer pos, Integer neg, Integer nor,
			Set<Xreview> xreviews, Set<Lreview> lreviews) {
		this.category = category;
		this.name = name;
		this.price = price;
		this.pic = pic;
		this.remark = remark;
		this.xremark = xremark;
		this.date = date;
		this.commend = commend;
		this.url = url;
		this.pos = pos;
		this.neg = neg;
		this.nor = nor;
		this.xreviews = xreviews;
		this.lreviews = lreviews;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category.id")
	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getPic() {
		return this.pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getXremark() {
		return this.xremark;
	}

	public void setXremark(String xremark) {
		this.xremark = xremark;
	}

	public Timestamp getDate() {
		return this.date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public Boolean getCommend() {
		return this.commend;
	}

	public void setCommend(Boolean commend) {
		this.commend = commend;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getPos() {
		return this.pos;
	}

	public void setPos(Integer pos) {
		this.pos = pos;
	}

	public Integer getNeg() {
		return this.neg;
	}

	public void setNeg(Integer neg) {
		this.neg = neg;
	}

	public Integer getNor() {
		return this.nor;
	}

	public void setNor(Integer nor) {
		this.nor = nor;
	}
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="product")
	public Set<Xreview> getXreviews() {
		return this.xreviews;
	}

	public void setXreviews(Set<Xreview> xreviews) {
		this.xreviews = xreviews;
	}
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="product")
	public Set<Lreview> getLreviews() {
		return this.lreviews;
	}

	public void setLreviews(Set<Lreview> lreviews) {
		this.lreviews = lreviews;
	}

}