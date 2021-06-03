package admin.mvc.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;


@Entity
@Table(name ="PRODUCTS")
public class Products {

	@Id
	@Column(name ="ProductId")
	private String productId;
	@Column(name ="ProductName")
	private String productName;
	@Column(name ="ProductTitle")
	private String productTitle;
	@Column(name ="ProductDes")
	private String productDes;
	@Column(name= "ProductImg")
	private String productImg;
	@Column(name ="Price")
	private float price;
	@Column(name ="CreateDate")
	private Date createDate;
	@JsonManagedReference
	@ManyToOne
	@JoinColumn(name ="CatalogId", referencedColumnName = "CatalogId")
	private Categories catalog;
	@Column(name="ProductStatus")
	private boolean productStatus;
	@JsonIgnore
	@OneToMany(mappedBy = "productId",fetch = FetchType.EAGER)
	private List<OrderDetail> listDetail;
	
	
	public Products() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Products(String productId, String productName, String productTitle, String productDes, String productImg,
			float price, Date createDate, Categories catalog, boolean productStatus) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productTitle = productTitle;
		this.productDes = productDes;
		this.productImg = productImg;
		this.price = price;
		this.createDate = createDate;
		this.catalog = catalog;
		this.productStatus = productStatus;
	}


	public String getProductId() {
		return productId;
	}


	public void setProductId(String productId) {
		this.productId = productId;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public String getProductTitle() {
		return productTitle;
	}


	public void setProductTitle(String productTitle) {
		this.productTitle = productTitle;
	}


	public String getProductDes() {
		return productDes;
	}


	public void setProductDes(String productDes) {
		this.productDes = productDes;
	}


	public String getProductImg() {
		return productImg;
	}


	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}


	public float getPrice() {
		return price;
	}


	public void setPrice(float price) {
		this.price = price;
	}


	public Date getCreateDate() {
		return createDate;
	}


	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}


	public Categories getCatalog() {
		return catalog;
	}


	public void setCatalog(Categories catalog) {
		this.catalog = catalog;
	}


	public boolean isProductStatus() {
		return productStatus;
	}


	public void setProductStatus(boolean productStatus) {
		this.productStatus = productStatus;
	}


	public List<OrderDetail> getListDetail() {
		return listDetail;
	}


	public void setListDetail(List<OrderDetail> listDetail) {
		this.listDetail = listDetail;
	}

}
