package test;

import static org.junit.Assert.*;

import java.sql.SQLSyntaxErrorException;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import mini_project_1.Advertise;
import mini_project_1.AdvertiseImpl;

//This class will test all the methods that are available in AdvertiseImpl.java

public class JunitTest {


	private AdvertiseImpl impl;

@Before
//This method will create database connection in MySql
public void setUp() throws Exception {
	DriverManagerDataSource datasource = new DriverManagerDataSource();
	datasource.setUrl("jdbc:mysql://localhost:3306/mini_project");
	datasource.setUsername("root");
	datasource.setPassword("root");
	datasource.setDriverClassName("com.mysql.jdbc.Driver");
	
	impl = new AdvertiseImpl();
}

//@Test
//This method will fetch the details of all data in advertise table and 
//is compared with test cases
/*public void testFetch() {
	List<Advertise> listad = impl.fetch();
	
	assertFalse(listad.isEmpty());
	
}*/

//@Test
//This method will insert the details of all data in advertise table and 
//is compared with test cases

/*public void testInsert() {
	int expected=1;
	Advertise ad= new Advertise(9,"Bike","Enfield","RoyalLmtd");
	int actual=impl.insert(ad);
	assertEquals(expected,actual);
}*/

//@Test
//This method will update the details of all data in advertise table and 
//is compared with test cases
/*public void testUpdate()throws SQLSyntaxErrorException {
	Advertise ad = new Advertise();
	ad.setId(2);
    ad.setProduct("Headset");
    ad.setBrand_name("Iball");
    ad.setCompany("Jbl");
    
    impl.update(ad);

}*/

@Test
//This method will delete the details of data in advertise table and 
//is compared with test cases
public void testDelete() {
	int id=2;
	//impl.delete(id);
	
	int n=impl.delete(id);
	if(n<0)
		fail("Deletion failed");
	
}

//@Test
//This method will search the details of  data in advertise table and 
//is compared with test cases
/*public void testSearch() {
	
	int id = 1;
	Advertise ad = impl.search(id);
	
	assertNotNull(ad);
}*/
}
