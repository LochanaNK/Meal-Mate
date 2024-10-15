package models;

public class ResAdmin {
	protected int a_id;
	protected String username;
	protected String password;
	protected String email;
	protected String date;
	
	public ResAdmin() {

	}
	
	public ResAdmin(int a_id,String username,String password,String email,String date) {
		this.a_id=a_id;
		this.username=username;
		this.password=password;
		this.email=email;
		this.date=date;
		
	}
	
	public int getA_id() {
		return a_id;
	}
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	public String getEmail() {
		return email;
	}
	public String getDate() {
		return date;
	}
	
	public void setA_id(int a_id) {
		this.a_id=a_id;
	}
	public void setUsername(String username) {
		this.username=username;
	}
	public void setPassword(String password) {
		this.password=password;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public void setDate(String date) {
		this.date=date;
	}
}
