package models;

public class Restaurants {
	private String name;
	private String email;
	private String contact;
	
	
	public Restaurants() {}
	
	public Restaurants(String name,String email,String contact) {
		this.name=name;
		this.email=email;
		this.contact=contact;
	}
	
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getContact() {
		return contact;
	}
	
	public void setName(String name) {
		this.name=name;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public void setContact(String contact) {
		this.contact=contact;
	}
}
