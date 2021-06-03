package admin.mvc.DTO;

import java.util.List;

public class OrderDTO {
	
	
	private int oderId;
	private String customerName;
	private String address;
	private String phoneNumber;
	private String email;
	private float totalAmount;
	private String oderStatus;
	
	public OrderDTO() {
		

	}

	public int getOderId() {
		return oderId;
	}

	public void setOderId(int oderId) {
		this.oderId = oderId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public float getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(float totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getOderStatus() {
		return oderStatus;
	}

	public void setOderStatus(String oderStatus) {
		this.oderStatus = oderStatus;
	}

}
