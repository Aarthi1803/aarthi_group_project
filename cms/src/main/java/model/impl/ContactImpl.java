package model.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.dao.ContactDAO;
import model.entity.Contact;


public class ContactImpl implements ContactDAO {

	Map<Integer,Contact> map=new HashMap<Integer, Contact>();
	
	public Map<Integer, Contact> getAllContacts() {
		
		return map;
		
	}

	public Contact getContact(Integer id) {
		
		Contact contact=map.get(id);
		return (contact!=null)?contact:null;
		
		
	}

	public boolean addContact(Integer id,Contact contact) {
		
		Contact c=map.put(id, contact);
		if(c!=null)return true;
		else return false;
		
		
	}

	public boolean removeContact(Integer id) {
		Contact contact=map.remove(id);
		if(contact!=null) return true;
		else return false;
		
		
	}

	
	
}
