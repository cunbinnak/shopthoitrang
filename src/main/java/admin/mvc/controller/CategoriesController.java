package admin.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin.mvc.DAO.IcategoriesDAO;
import admin.mvc.entity.Categories;

@Controller
@RequestMapping(value ="/categories")
public class CategoriesController {

	@Autowired
	private IcategoriesDAO cateRepo;
	
	@RequestMapping(value ="/danh-muc")
	public ModelAndView catePage() {
		ModelAndView mav = new ModelAndView("categories");
		List<Categories> listCate = cateRepo.findAll();
		mav.addObject("listCate", listCate);
		return mav;
	}
	
	@RequestMapping(value ="/initaddcate")
	public String initaddCate(Model cate) {
		Categories newCate = new Categories();
		cate.addAttribute("initCate", newCate);
		return "initcategories";
	}

	@RequestMapping(value ="/savecate", method = RequestMethod.POST)
	public String saveCate(@ModelAttribute ("initCate") Categories cate) {
		cateRepo.save(cate);
		return "redirect:danh-muc";
		
	}
	
	@RequestMapping(value ="/initeditcate")
	public ModelAndView initEditCate(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("editcategories");
		Categories editCate =  cateRepo.findOne(id);
		mav.addObject("editCate", editCate);
		return mav;
	}
	
	@RequestMapping(value ="/editcate")
	public String editCate(@ModelAttribute ("editCate") Categories cate) {
		cateRepo.save(cate);
		return "redirect:danh-muc";
	}
	
	@RequestMapping(value="/deletecate")
	public String delete(@RequestParam int id, Model cate) {
		cateRepo.delete(id);
		List<Categories> listCate = cateRepo.findAll();
		cate.addAttribute("listCate", listCate);
		return "redirect:danh-muc";
	}
}
