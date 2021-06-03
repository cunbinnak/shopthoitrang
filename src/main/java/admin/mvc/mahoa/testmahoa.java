package admin.mvc.mahoa;

import org.springframework.security.crypto.bcrypt.BCrypt;

public class testmahoa {

	public static void main(String[] args) {
		String pass = BCrypt.hashpw("Thanhcong1", BCrypt.gensalt(12));
		System.out.println(pass);
	}
}
