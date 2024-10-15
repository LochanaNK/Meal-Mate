package models;

public class Restaurants {

    private String resName;
    private String email;
    private String phone;
    private String address;
	private String image;
	private int a_id;
	
	public Restaurants() {}
	
	public Restaurants(String resName,String email,String phone,String address,String image,int a_id) {

		this.resName=resName;
		this.email=email;
		this.phone=phone;
		this.address=address;
		this.image=image;
		this.a_id=a_id;
	}
	

	public String getResname() {
		return resName;
	}
	public String getEmail() {
		return email;
	}
	public String getPhone() {
		return phone;
	}
	
	public String getAddress() {
		return address;
	}
	public String getImage() {
		return image;
	}
	public int getA_id() {
		return a_id;
	}
	

	public void setEmail(String email) {
		this.email=email;
	}
	public void setPhone(String phone) {
		this.phone=phone;
	}
	public void setResname(String resName) {
		this.resName=resName;
	}
	public void setAddress(String address) {
		this.address=address;
	}
	public void setImage(String image) {
		this.image=image;
	}
	public void setA_id(int a_id) {
		this.a_id=a_id;
	}
}
