package model.entity;

public class Contact {
	private static int i=0;
    private	int id;
	private String name;
	private long contact_number;
	private String email;
	private String address;
	
    public Contact() {
		
	 }
      public Contact(String plan){
    	  String[]plan_details=plan.split(",");
    	  id=++i;
    	  name=plan_details[0];
    	  contact_number=Integer.parseInt(plan_details[1]);
    	  email=plan_details[2];
    	  address=plan_details[3];
     }
   
      public static int getI() {
  		return i;
  	}

  	public static void setI(int i) {
  		Contact.i = i;
  	}

  	public int getId() {
  		return id;
  	}


    	public String getName() {
    		return name;
    	}


    	public void setName(String name) {
    		this.name = name;
    	}


		
	     public long getContact_number() {
		    return contact_number;
	     }
	
	    public void setContact_number(long contact_number) {
		     this.contact_number = contact_number;
		     
	    }
	    public String getEmail() {
		     return email;
		     
	    }
	    public void setEmail(String email) {
		     this.email = email;
		     
	    }
	    public String getAddress() {
		     return address;
		     
	    }
	    public void setAddress(String address) {
		    this.address = address;
		    
	    }
		/*@Override
		public String toString() {
			return "Contact [id=" + id + ", name=" + name + ", contact_number=" + contact_number + ", email=" + email
					+ ", address=" + address + "]";
		}*/
	    
	    /*public String toString() {
		String str_format="%-4s\t %-10s\t %-10s\t %-10s\t %-10s";
		return String.format(str_format,id,name,contact_number,email,address);*/
		
		public String toString(){
		return String.format("Contact id:%-10s<br/> Contact name:%-10s<br/> Contact number:%-10s<br/> Email:%-10s<br/> Address:%-10s<br/>",id,name,contact_number,email,address);
	
	}

}
