package elephant.model;

/**
 * Account entity. @author MyEclipse Persistence Tools
 */

public class Account implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name;
	private Float money;

	// Constructors

	/** default constructor */
	public Account() {
	}

	/** full constructor */
	public Account(String name, Float money) {
		this.name = name;
		this.money = money;
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

	public Float getMoney() {
		return this.money;
	}

	public void setMoney(Float money) {
		this.money = money;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", name=" + name + ", money=" + money
				+ "]";
	}

}