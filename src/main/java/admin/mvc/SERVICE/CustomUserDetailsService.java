package admin.mvc.SERVICE;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import admin.mvc.DAO.IUserRepository;
import admin.mvc.entity.Role;
import admin.mvc.entity.Users;


@Service
public class CustomUserDetailsService implements UserDetailsService{

	@Autowired
	private IUserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		Users userEntity = userRepository.findOneByUserNameAndUserStatus(username, true);
		
		if (userEntity==null) {
			throw new UsernameNotFoundException("Not Found Your Account");
		}
		//put thong tin nguoi dang nhap vao he thong de duy tri session
		
		List<GrantedAuthority> authorities = new ArrayList<>();
		for (Role role : userEntity.getRoles()) {
			authorities.add(new SimpleGrantedAuthority(role.getRoleName()));
		}
		User myUser = new User(userEntity.getUserName(), userEntity.getUserPassWords(), true, true, true, true, authorities);
		return myUser;
	}

}
