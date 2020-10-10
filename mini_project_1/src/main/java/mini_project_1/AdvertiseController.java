package mini_project_1;

import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//A Controller Class

@Controller
public class AdvertiseController {
	
//creating impl object globally so that it will be available to all methods
	
     AdvertiseImpl impl=new AdvertiseImpl();
     
 //Method to map and fetch all records from advertise table 
     
	@RequestMapping("/view_all")
	public ModelAndView showAdvertiseDetails(){
		ModelAndView mv=new ModelAndView();
		List<Advertise>list=new AdvertiseImpl().fetch();
		mv.addObject("list",list);
		mv.setViewName("advertise_info");
		return mv;
	}
	
	//Method to map and insert records in advertise table 
	
	@RequestMapping("/insert")
	public ModelAndView add(@RequestParam("id") int id,@RequestParam("product") String product,
			@RequestParam("brand_name") String brand_name,	@RequestParam("company") String company	) {
	   Advertise ad=new Advertise();
		ad.setId(id);
		ad.setProduct(product);
		ad.setBrand_name(brand_name);
		ad.setCompany(company);
        int n=impl.insert(ad);
		ModelAndView mv=new ModelAndView();
        mv.addObject("rec_affected",n);
        mv.setViewName("add");
        return mv;
   }
	
	//Method to map and search records in advertise table 
	
	@RequestMapping("/search")
	public ModelAndView showDetail(@RequestParam("id")int id) {
		
		Advertise ad=impl.search(id);
		ModelAndView mv=new ModelAndView();
		mv.addObject("search_here", ad);
		mv.setViewName("search_records");
       return mv;
		
		
	}
	
	//Method to map and delete records in advertise table 
	
	@RequestMapping("/delete")
	   public ModelAndView delete(@RequestParam("id")int id) {
		   ModelAndView mv=new ModelAndView("remove");
		   Advertise ad=new Advertise();
		   ad.setId(id);
		   int n=impl.delete(id);
		   mv.addObject("delete_here", n);
		   mv.setViewName("delete_records");
		   return mv;
	   }
	
	//Method to map and update records in advertise table 
	
	@RequestMapping("/update")
	public ModelAndView select(@RequestParam("product")String product,@RequestParam("brand_name")String brand_name,@RequestParam("company")String company,@RequestParam("id")int id){
		Advertise ad=new Advertise();
		
		ad.setProduct(product);
		ad.setBrand_name(brand_name);
		ad.setCompany(company);
		ad.setId(id);
        int n=impl.update(ad);
		ModelAndView mv=new ModelAndView();
		
		mv.addObject("update_here",n);
		mv.setViewName("update_records");
		return mv;
	}
	
	//Method to map and update records from user to admin in user table 
	
	@RequestMapping("/change_user")
	public ModelAndView update1(@RequestParam("role")String role,@RequestParam("id")int id){
		User user=new User();
		user.setRole(role);
		user.setId(id);
		ModelAndView mv=new ModelAndView();
		int n=impl.update_user(user);
		mv.addObject("change_user_here",n);
		mv.setViewName("change_user_records");
		return mv;
	}
	
	//Method to map and delete records in user table 
	
	@RequestMapping("/insert_user")
	public ModelAndView adduser(@RequestParam("id") int id,@RequestParam("username") String username,
			@RequestParam("password") String password,	@RequestParam("role") String role	) {
	    User user=new User();
		user.setId(id);
		user.setUsername(username);
		user.setPassword(password);
		user.setRole(role);
        int n=impl.insert_user(user);
		ModelAndView mv=new ModelAndView();
        mv.addObject("rec_affected",n);
        mv.setViewName("adduser_records");
        return mv;
   }
}