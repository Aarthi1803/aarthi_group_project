package mini_project_1;



//A normal pojo(Bean class) for Advertise table in database


public class Advertise {
	/* Advertise	id -int primary key	product- varchar(100) not null	brand_name-varchar(100) not null	company- varchar(100) not null
	User	id- int primary key	username-varchar(100) not null	password-varchar(10) not null	role- varchar check(admin, user)
	*/
	
	//all columns in table are being specified as fields in java
	private int id;
	private String product;
	private String brand_name;
	private String company;
	
	//a default constructor
	public Advertise() {
		
	}
	//a parameterized constructor with fields
	public Advertise(int id, String product, String brand_name, String company) {
		
		this.id = id;
		this.product = product;
		this.brand_name = brand_name;
		this.company = company;
	}
	
	//getters and setters for all fields
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
	//A toString method for string representation
	@Override
	public String toString() {
		return " [id=" + id + ", product=" + product + ", brand_name=" + brand_name + ", company=" + company
				+ "]";
	}
	
}
