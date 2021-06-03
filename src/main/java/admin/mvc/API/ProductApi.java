package admin.mvc.API;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import admin.mvc.DAO.IproductsDAO;
import admin.mvc.DTO.ProductDTO;
import admin.mvc.entity.Products;

@CrossOrigin
@RestController
@RequestMapping(value ="/api")
public class ProductApi {

	@Autowired
	private IproductsDAO proRepo;
	
	
	
	@GetMapping(value ="/product")
	public List<Products> getlistPro(){
		List<Products> listProduct = proRepo.findAll();
		return listProduct;
	}
	
	@PutMapping(value ="/product")
	public ProductDTO updateProduct (@RequestBody ProductDTO updateProDTO) {
		return updateProDTO;
	}
	
	@DeleteMapping(value ="/product")
	public void deleteProduct (@RequestBody String[] ids) {
		
	}
}
