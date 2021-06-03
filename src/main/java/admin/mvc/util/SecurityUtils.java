package admin.mvc.util;

import static org.springframework.security.core.context.SecurityContextHolder.getContext;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;

public class SecurityUtils {

	
	
	public static  List<String> getAuthorities(){
		List<String> results = new ArrayList<String>();
		@SuppressWarnings("unchecked")
		List<GrantedAuthority> authorities = (List<GrantedAuthority>)(getContext().getAuthentication().getAuthorities());
        for (GrantedAuthority authority : authorities) {
            results.add(authority.getAuthority());
        }
		return results;
	}
}
