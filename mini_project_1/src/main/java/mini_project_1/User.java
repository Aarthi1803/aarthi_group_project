package mini_project_1;


//A normal pojo(Bean class) for User table in database



public class User {
	/* Advertise	id -int primary key	product- varchar(100) not null	brand_name-varchar(100) not null	company- varchar(100) not null
	User	id- int primary key	username-varchar(100) not null	password-varchar(10) not null	role- varchar check(admin, user)
	*/
	private int id;
	private String username;
	private String password;
	private String role;
	public User() {
		
	}
	public User(int id, String username, String password, String role) {
		
		this.id = id;
		this.username = username;
		this.password = password;
		this.role = role;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "[id=" + id + ", username=" + username + ", password=" + password + ", role=" + role + "]";
	}
	
	
}
