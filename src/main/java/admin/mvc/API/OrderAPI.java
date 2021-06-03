package admin.mvc.API;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import admin.mvc.DAO.IorderDAO;
import admin.mvc.DAO.IorderDetailDAO;
import admin.mvc.DTO.OrderDTO;
import admin.mvc.DTO.OrderDetailDTO;
import admin.mvc.entity.Order;
import admin.mvc.entity.OrderDetail;

@CrossOrigin
@RestController
@RequestMapping(value = "/api")
public class OrderAPI {
	
	@Autowired
	private IorderDAO orderRepo;
	
	@Autowired
	private IorderDetailDAO orderDetailRepo;
	
	
	@GetMapping(value ="/order")
	public List<Order> listOrder(){
		List<Order> listOrder = orderRepo.findAll();
		return listOrder;
	}
	
	@PostMapping(value ="/order")
	public Order createOrder(@RequestBody OrderDTO orderDTO) {
		Order newOrder = new Order();
		newOrder.setCustomerName(orderDTO.getCustomerName());
		newOrder.setAddress(orderDTO.getAddress());
		newOrder.setEmail(orderDTO.getEmail());
		newOrder.setPhoneNumber(orderDTO.getPhoneNumber());
		newOrder.setTotalAmount(orderDTO.getTotalAmount());
		newOrder.setOderStatus("Đang Chờ Xét Duyệt");
		
		return orderRepo.save(newOrder);
	}
	
	@PutMapping(value ="/order")
	public Order updateOrder(@RequestBody OrderDTO orderDTO) {
		Order editOrder = new Order();
		editOrder.setCustomerName(orderDTO.getCustomerName());
		editOrder.setAddress(orderDTO.getAddress());
		editOrder.setEmail(orderDTO.getEmail());
		editOrder.setPhoneNumber(orderDTO.getPhoneNumber());
		editOrder.setTotalAmount(orderDTO.getTotalAmount());
		return orderRepo.save(editOrder);
	}
	
	@DeleteMapping(value ="/order")
	public void deleteOrder(@RequestBody OrderDTO id) {
		Order delete = orderRepo.findOne(id.getOderId());
		OrderDetail deleteDetail = orderDetailRepo.findOne(id.getOderId());
		orderDetailRepo.delete(deleteDetail);
		orderRepo.delete(delete);
		System.out.println("success");
		
	}
}
