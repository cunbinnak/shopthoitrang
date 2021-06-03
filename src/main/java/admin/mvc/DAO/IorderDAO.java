package admin.mvc.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import admin.mvc.entity.Order;

public interface IorderDAO extends JpaRepository<Order, Integer>{

}
