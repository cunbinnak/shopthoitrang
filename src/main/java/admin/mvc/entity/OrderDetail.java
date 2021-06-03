package admin.mvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name ="ODERDETAIL")
public class OrderDetail extends BaseEntity{

	
	@Id
	@Column(name ="OderDetailId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int oderDetailId;
	@ManyToOne
	@JoinColumn(name ="oderId", referencedColumnName = "OderId")
	private Order oderId;
	@ManyToOne
	
	@JoinColumn(name ="productId", referencedColumnName = "ProductId")
	private Products productId;
	@Column(name ="quantity")
	private int quantity;
	
	
	public OrderDetail() {
		super();
		// TODO Auto-generated constructor stub
	}


	public OrderDetail(Integer oderDetailId, Order oderId, Products productId, int quantity) {
		super();
		this.oderDetailId = oderDetailId;
		this.oderId = oderId;
		this.productId = productId;
		this.quantity = quantity;
	}


	public int getOderDetailId() {
		return oderDetailId;
	}


	public void setOderDetailId(int oderDetailId) {
		this.oderDetailId = oderDetailId;
	}


	public Order getOderId() {
		return oderId;
	}


	public void setOderId(Order oderId) {
		this.oderId = oderId;
	}


	public Products getProductId() {
		return productId;
	}


	public void setProductId(Products productId) {
		this.productId = productId;
	}


	public Integer getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
