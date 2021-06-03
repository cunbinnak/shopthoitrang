package admin.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin.mvc.DAO.IorderDAO;
import admin.mvc.DAO.IorderDetailDAO;
import admin.mvc.entity.Order;
import admin.mvc.entity.OrderDetail;

@Controller
@RequestMapping(value ="shopping")
public class OderController {

	@Autowired
	private IorderDAO orderRepo;
	@Autowired
	private IorderDetailDAO orderDetailRepo;
	
	@RequestMapping(value ="/order")
	public ModelAndView oderPage() {
		ModelAndView mav = new ModelAndView("order");
		List<Order> listOrder = orderRepo.findAll();
		mav.addObject("listOrder", listOrder);
		return mav;
	}
	
	@RequestMapping(value ="/initeditoder")
	public ModelAndView initeditOrder(@RequestParam int id ) {
		ModelAndView mav = new ModelAndView("editorder");
		Order editOrder = orderRepo.findOne(id);
		mav.addObject("editOrder", editOrder);
		return mav;
	}
	
	@RequestMapping(value ="/editorder", method = RequestMethod.POST)
	public String editOrder(@ModelAttribute("editOrder") Order editorder) {
		Order _editOrder = orderRepo.findOne(editorder.getOderId());
		_editOrder.setOderStatus(editorder.getOderStatus());
		orderRepo.save(_editOrder);
		return "redirect:order";
	}
	
	@RequestMapping(value ="/vieworder")
	public ModelAndView viewOrder(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("vieworder");
		Order viewOrder = orderRepo.findOne(id);
		OrderDetail viewDetail = orderDetailRepo.findOne(viewOrder.getOderId());
		mav.addObject("viewDetail", viewDetail);
		mav.addObject("viewOrder", viewOrder);
		return mav;
	}
	
	@RequestMapping(value ="/deleteoder")
	public String deleteOrdet(@RequestParam int id) {
		//ModelAndView mav = new ModelAndView("order");
		orderRepo.delete(id);
		//List<Order> listOrder = orderRepo.findAll();
		//mav.addObject("listOrder", listOrder);
		return "redirect:order";
	}
}
