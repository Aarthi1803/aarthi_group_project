package model.dao;

import java.util.Map;

import model.entity.Contact;

public interface ContactDAO {
	
		Map<Integer,Contact> getAllContacts();
		Contact getContact(Integer id);
		boolean addContact(	Integer id,Contact contact);
		boolean removeContact(Integer id);


}
