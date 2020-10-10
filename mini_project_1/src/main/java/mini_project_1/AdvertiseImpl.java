package mini_project_1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

//A class that has implemented DAO and defining all those methods here

public class AdvertiseImpl implements AdvertiseDAO {
	
//initializing all jdbc objects
	
	private Connection connection;
	private PreparedStatement statement;	
	private ResultSet resultSet;
	
//constructor that holds database connection
	
	public AdvertiseImpl() {
	
		String dburl="jdbc:mysql://localhost:3306/mini_project";
		String username="root";
		String password="root";
		String driver="com.mysql.jdbc.Driver";
		
		try {
			Class.forName(driver);
			connection=DriverManager.getConnection(dburl,username,password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
/*
 * 
 * 
 * private int id;
	private String product;
	private String brand_name;
	private String company;
	
 */
	//Fetch method to fetch all data in Advertise table
	
	public List<Advertise> fetch() {
		String sql="select*from advertise";
		List<Advertise>list=new ArrayList<Advertise>();
		Advertise ad=null;
		try {
			statement=connection.prepareStatement(sql);
			resultSet=statement.executeQuery();
			while(resultSet.next()) {
				ad=new Advertise();
				ad.setId(resultSet.getInt("id"));
				ad.setProduct(resultSet.getString("product"));
				ad.setBrand_name(resultSet.getString("brand_name"));
				ad.setCompany(resultSet.getString("company"));
				
				list.add(ad);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}
	
//Insert method to insert  data in Advertise table
	
	public int insert(Advertise ad) {
		int n=-1;	
		try{
			Statement statement=connection.createStatement();
			String sql="insert into advertise values("+ad.getId()+",'"+ad.getProduct()+"','"+ad.getBrand_name()+"','"+ad.getCompany()+"')";
			n=statement.executeUpdate(sql);
			}catch(Exception e){
				System.out.println(e);
			}
		return n;
}
	
	//Update method to update  data in Advertise table
	
	public int update(Advertise ad) {
		int n=-1;	
		try{
		Statement statement=connection.createStatement();
			String sql="update advertise set product='"+ad.getProduct()+"',brand_name='"+ad.getBrand_name()+"',company='"+ad.getCompany()+"'where id="+ad.getId()+" "+"";
			n=statement.executeUpdate(sql);
			}catch(Exception e){
				System.out.println(e);
			}
		return n;
	}

	//Delete method to delete data in Advertise table
	
	public int delete(int id) {
		
		int n=-1;	
		try{
			Statement statement=connection.createStatement();
			String sql="delete from advertise where id="+id+" ";
			n=statement.executeUpdate(sql);
			System.out.println(n);
			}catch(Exception e){
				System.out.println(e);
			}
		return n;		
	}

	//Search method to search data in Advertise table
	
	public Advertise search(int id) {
		Advertise ad=new Advertise();
		try {
			Statement statement=connection.createStatement();
			String sql="select * from advertise where id="+id+"";
			resultSet=statement.executeQuery(sql);
			while(resultSet.next()) {
				ad.setId(resultSet.getInt("id"));
				ad.setProduct(resultSet.getString("product"));
				ad.setBrand_name(resultSet.getString("brand_name"));
				ad.setCompany(resultSet.getString("company"));
			}
			}catch(Exception e){
				System.out.println(e);
			}
		return ad;
	}
	
	//Update method to update data from admin to user in User table
	
	public int update_user(User user) {
		int n=-1;	
		try{
		Statement statement=connection.createStatement();
			String sql="update user set role='"+user.getRole()+"' where id='"+user.getId()+"'";
			n=statement.executeUpdate(sql);
			}catch(Exception e){
				System.out.println(e);
			}
		return n;
	}
	
	//Insert method to insert data in User table
	
	public int insert_user(User user) {
		int n=-1;	
		try{
			Statement statement=connection.createStatement();
			String sql="insert into user values("+user.getId()+",'"+user.getUsername()+"','"+user.getPassword()+"','"+user.getRole()+"')";
			n=statement.executeUpdate(sql);
			}catch(Exception e){
				System.out.println(e);
			}
		return n;}
	

}
