package admin.mvc.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import admin.mvc.entity.Products;

public interface IproductsDAO  extends JpaRepository<Products, String>{

}
