package admin.mvc.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import admin.mvc.DAO.IcategoriesDAO;
import admin.mvc.DAO.IproductsDAO;
import admin.mvc.entity.Categories;
import admin.mvc.entity.Products;


@Controller
@RequestMapping(value ="/product")
public class ProductController {
	
	@Autowired
	private IproductsDAO proRepo;
	
	@Autowired
	private IcategoriesDAO cateRepo;
	
	@InitBinder
	public void initBider(WebDataBinder dataBider) {
		SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
		dataBider.registerCustomEditor(Date.class, new CustomDateEditor(s, true));
		
		Object target = dataBider.getTarget();
		if (target ==null) {
			return;
		}
//		System.out.println("target"+target);
//		if (target.getClass()==Products.class) {
//			dataBider.registerCustomEditor(byte[].class, new ByteArrayMultipartFileEditor());
//		}
	}
	
	@RequestMapping(value ="/san-pham")
	public ModelAndView productPage() {
		ModelAndView mav = new ModelAndView("product");
		List<Products> listPro = proRepo.findAll();
		mav.addObject("listPro", listPro);
		return mav;
	}
	
	@RequestMapping(value ="/initaddpro")
	public String initProduct (Model pro) {
		Products newPro = new Products();
		List<Categories> listCate = cateRepo.findAll();
		pro.addAttribute("newPro", newPro);
		pro.addAttribute("listCate", listCate);
		return "initproduct";
	}
	
	@RequestMapping(value ="/savepro")
	public String savePro(@ModelAttribute ("newPro") Products pro, @RequestParam ("fileData") MultipartFile fileData, HttpServletRequest request) {
		
		String path = request.getServletContext().getRealPath("resources/image");
		
		File fileName = new File(path);
		
		File dest = new File(fileName.getAbsoluteFile()+"/"+fileData.getOriginalFilename());
		
		if (!dest.exists()) {
			try {
				byte[] dataName = fileData.getBytes();
				Files.write(dest.toPath(), dataName, StandardOpenOption.CREATE);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		pro.setProductImg(fileData.getOriginalFilename());
		proRepo.save(pro);
		
		return "redirect:san-pham";
	}
	
	
	@RequestMapping(value ="/initeditpro")
	public ModelAndView initeditpro(@RequestParam String id) {
		ModelAndView mav = new ModelAndView("editproduct");
		Products editPro = proRepo.findOne(id);
		List<Categories> listCate = cateRepo.findAll();
		mav.addObject("listCate", listCate);
		mav.addObject("editPro", editPro);
		return mav;
	}
	
	@RequestMapping(value ="/editpro")
	public String editpro (@ModelAttribute ("editPro") Products editPro,@RequestParam ("fileData") MultipartFile fileData, HttpServletRequest request) {
		
		if (!fileData.isEmpty()) {
			String path = request.getServletContext().getRealPath("resources/image");
			
			File fileName = new File(path);
			
			File dest = new File(fileName.getAbsoluteFile()+"/"+fileData.getOriginalFilename());
			
			if (!dest.exists()) {
				try {
					byte[] dataName = fileData.getBytes();
					Files.write(dest.toPath(), dataName, StandardOpenOption.CREATE);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			editPro.setProductImg(fileData.getOriginalFilename());
		}else {
			Products _editPro = proRepo.findOne(editPro.getProductId());
			String imgeditPro = _editPro.getProductImg();
			editPro.setProductImg(imgeditPro);
		}
		proRepo.save(editPro);
		return "redirect:san-pham";
	}
	
	@RequestMapping(value ="/viewproductdetail")
	public ModelAndView viewproductdetail(@RequestParam String id) {
		ModelAndView mav = new ModelAndView("viewdetailproduct");
		Products viewPro = proRepo.findOne(id);
		List<Categories> listCate = cateRepo.findAll();
		mav.addObject("listCate", listCate);
		mav.addObject("viewPro", viewPro);
		return mav;
	}
	
	
	@RequestMapping(value ="/deletepro")
	public String deletePro (@RequestParam String id, Model pro) {
		proRepo.delete(id);
		List<Products> listPro =proRepo.findAll();
		List<Categories> listCate = cateRepo.findAll();
		pro.addAttribute("listPro", listPro);
		pro.addAttribute("listCate", listCate);
		return "redirect:san-pham";
	}
}
