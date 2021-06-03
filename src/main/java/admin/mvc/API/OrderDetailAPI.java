package admin.mvc.API;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import admin.mvc.DAO.IorderDetailDAO;
import admin.mvc.DTO.OrderDetailDTO;
import admin.mvc.entity.OrderDetail;
import admin.mvc.entity.Products;

@RestController
@CrossOrigin
@RequestMapping(value ="/api-order")
public class OrderDetailAPI {

	@Autowired
	private IorderDetailDAO orderDetailRepo;
	
	
	@GetMapping(value ="/orderdetail")
	public List<OrderDetail> getlistDetails (){
		List<OrderDetail> listDetails = orderDetailRepo.findAll();
		return listDetails;
	}
	
	@PostMapping(value ="/orderdetail")
	public OrderDetail addnewDetail (@RequestBody OrderDetailDTO detailDTO) {
		OrderDetail newDetail = new OrderDetail();
		newDetail.setOderId(detailDTO.getOderId());
		Products p = new Products();
		p.setProductId(detailDTO.getProductId().getProductId());
		newDetail.setProductId(p);
		newDetail.setQuantity(detailDTO.getQuantity());
		
		return orderDetailRepo.save(newDetail);
	}
	
	@PutMapping(value ="/orderdetail")
	public OrderDetail updateDetail (@RequestBody OrderDetailDTO detailDTO) {
		OrderDetail updateDetail = new OrderDetail();
		updateDetail.setOderId(detailDTO.getOderId());
		Products proId = new Products();
		proId.setProductId(detailDTO.getProductId().getProductId());
		updateDetail.setProductId(proId);
		updateDetail.setQuantity(detailDTO.getQuantity());
		
		return orderDetailRepo.save(updateDetail);
	}
	
	
	
	
}
