package admin.mvc.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name ="CATEGORIES")
public class Categories {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name ="CatalogId")
	private int catalogId;
	@Column(name ="CatalogName")
	private String catalogName;
	@Column(name ="CatalogDes")
	private String catalogDes;
	@Column(name ="ParentId")
	private int parentId;
	@Column(name= "CatalogStatus")
	private boolean catalogStatus;
	@JsonBackReference
	@OneToMany(mappedBy = "catalog",fetch = FetchType.EAGER)
	private List<Products> listProduct;

	public Categories() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Categories(int catalogId, String catalogName, String catalogDes, int parentId, boolean catalogStatus,
			List<Products> listProduct) {
		super();
		this.catalogId = catalogId;
		this.catalogName = catalogName;
		this.catalogDes = catalogDes;
		this.parentId = parentId;
		this.catalogStatus = catalogStatus;
		this.listProduct = listProduct;
	}

	public int getCatalogId() {
		return catalogId;
	}

	public void setCatalogId(int catalogId) {
		this.catalogId = catalogId;
	}

	public String getCatalogName() {
		return catalogName;
	}

	public void setCatalogName(String catalogName) {
		this.catalogName = catalogName;
	}

	public String getCatalogDes() {
		return catalogDes;
	}

	public void setCatalogDes(String catalogDes) {
		this.catalogDes = catalogDes;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public boolean isCatalogStatus() {
		return catalogStatus;
	}

	public void setCatalogStatus(boolean catalogStatus) {
		this.catalogStatus = catalogStatus;
	}

	public List<Products> getListProduct() {
		return listProduct;
	}

	public void setListProduct(List<Products> listProduct) {
		this.listProduct = listProduct;
	}
	
	
}
