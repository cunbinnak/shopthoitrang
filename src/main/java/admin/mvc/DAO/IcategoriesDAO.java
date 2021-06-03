package admin.mvc.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import admin.mvc.entity.Categories;

public interface IcategoriesDAO extends JpaRepository<Categories, Integer>{
	
}
