package admin.mvc.DTO;

import admin.mvc.entity.Order;
import admin.mvc.entity.Products;

public class OrderDetailDTO {

	
	private int oderDetailId;
	private Order oderId;
	private ProductDTO productId;
	private int quantity;
	
	public OrderDetailDTO() {
		super();
		// TODO Auto-generated constructor stub
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

	public ProductDTO getProductId() {
		return productId;
	}

	public void setProductId(ProductDTO productId) {
		this.productId = productId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	
	
	
}
