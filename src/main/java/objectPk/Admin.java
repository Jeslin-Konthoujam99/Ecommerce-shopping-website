package objectPk;

import javax.servlet.http.Part;

public class Admin {
	
	String name;
	String address;
	String email;
	String username;
	String password;
	Part image;
	Part id;

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Part getImage() {
		return image;
	}
	public void setImage(Part image) {
		this.image = image;
	}
	public Part getId() {
		return id;
	}
	public void setId(Part id) {
		this.id = id;
	}
	

}
