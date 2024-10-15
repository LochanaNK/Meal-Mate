package models;

public class Admin extends ResAdmin {

	public Admin() {
		super();

	}

	public Admin(int a_id, String username, String password, String email, String date) {
		super(a_id, username, password, email, date);
		

	}
	
	public int getA_id() {
		return super.a_id;
	}
	public String getUsername() {
		return super.username;
	}
	public String getPassword() {
		return super.password;
	}
	public String getEmail() {
		return super.email;
	}
	public String getDate() {
		return super.date;
	}
	
	public void setA_id(int a_id) {
		super.a_id=a_id;
	}
	public void setUsername(String username) {
		super.username=username;
	}
	public void setPassword(String password) {
		super.password=password;
	}
	public void setEmail(String email) {
		super.email=email;
	}
	public void setDate(String date) {
		super.date=date;
	}

}
