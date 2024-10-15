package models;

public class Dishes {
	private String dishName;
    private String slogan;
    private String price;
	private String image;
	private int rs_id;
	
	public Dishes() {}
	
	public Dishes(String dishName,String slogan,String price,String image,int rs_id) {

		this.dishName=dishName;
		this.slogan=slogan;
		this.price=price;
		this.image=image;
		this.rs_id=rs_id;
	}
	

	public String getDishname() {
		return dishName;
	}
	public String getSlogan() {
		return slogan;
	}
	public String getPrice() {
		return price;
	}

	public String getImage() {
		return image;
	}
	public int getRs_id() {
		return rs_id;
	}
	

	public void setSlogan(String slogan) {
		this.slogan=slogan;
	}
	public void setPrice(String price) {
		this.price=price;
	}
	public void setDishname(String dishName) {
		this.dishName=dishName;
	}
	public void setImage(String image) {
		this.image=image;
	}
	public void setRs_id(int rs_id) {
		this.rs_id=rs_id;
	}
}
