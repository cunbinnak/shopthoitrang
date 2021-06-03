package admin.mvc.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name ="ODER")
public class Order extends BaseEntity{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name ="OderId")
	private int oderId;
	@Column(name ="CustomerName")
	private String customerName;
	@Column(name ="Address")
	private String address;
	@Column(name ="PhoneNumber")
	private String phoneNumber;
	@Column(name ="Email")
	private String email;
	@Column(name ="TotalAmount")
	private float totalAmount;
	@Column(name ="OderStatus")
	private String oderStatus;
	@JsonIgnore
	@OneToMany(mappedBy = "oderId")
	private List<OrderDetail> listOrderDetail;
	
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Order(int oderId, String customerName, String address, String phoneNumber, String email, float totalAmount,
			String oderStatus) {
		super();
		this.oderId = oderId;
		this.customerName = customerName;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.totalAmount = totalAmount;
		this.oderStatus = oderStatus;
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


	public List<OrderDetail> getListOrderDetail() {
		return listOrderDetail;
	}


	public void setListOrderDetail(List<OrderDetail> listOrderDetail) {
		this.listOrderDetail = listOrderDetail;
	}
	
	
}
