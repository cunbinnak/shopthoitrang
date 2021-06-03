package admin.mvc.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import admin.mvc.entity.Users;


public interface IUserRepository extends JpaRepository<Users,Integer>{

	Users findOneByUserNameAndUserStatus (String name ,boolean status);
	
}
