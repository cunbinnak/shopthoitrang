package admin.mvc.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import admin.mvc.entity.OrderDetail;

public interface IorderDetailDAO extends JpaRepository<OrderDetail, Integer>{

}
