package controller;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sun.javafx.webkit.KeyCodeMap.Entry;

import model.entity.Contact;
import model.impl.ContactImpl;





@Controller
@RequestMapping("/control")
public class ContactController {
	
	ContactImpl impl=new ContactImpl();
	
	@RequestMapping("/list")
	public ModelAndView getList() {
		
		Map<Integer, Contact>map=impl.getAllContacts();
		ModelAndView mv=new ModelAndView();
		mv.addObject("map",map);
		mv.setViewName("list");
		return mv;
		
	}
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam("id")int id) {
	
		ModelAndView mv =new ModelAndView();
		mv.setViewName("get");
		Map<Integer, Contact> map=impl.getAllContacts();
		Set<java.util.Map.Entry<Integer, Contact>>entry_set=map.entrySet();
		Iterator<java.util.Map.Entry<Integer, Contact>>it=entry_set.iterator();
		while(it.hasNext()) {
			java.util.Map.Entry<Integer, Contact> entry=it.next();
			if(entry.getValue().getId()==id) {
				mv.addObject("contact",entry.getValue());
			break;
		}
		}
		return mv;
	}
  
	@RequestMapping("/add")
	public ModelAndView add() {
		
		ModelAndView mv=new ModelAndView();
		Contact contact=new Contact("Harry,967542,harry@dxc,London");
		boolean flag=impl.addContact(contact.getId(), contact);
		mv.addObject("flag",flag);
		mv.setViewName("add");
		return mv;
		
		
	}
	
	@RequestMapping("/delete")
	public ModelAndView remove(@RequestParam("id")int id) {
		
		
		ModelAndView mv=new ModelAndView();
	    //Contact contact=new Contact("Amudha,960012,amu@dxc,Chennai");
	    
		boolean flag=impl.removeContact(id);
		mv.addObject("flag",flag);
		mv.setViewName("remove");
		return mv;
		
	}

}
