package admin.mvc.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;



@Entity
@Table(name ="USERS")
public class Users  extends BaseEntity{

	@Id
	@Column(name = "UserId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	@Column(name ="UserName")
	private String userName;
	@Column(name ="UserPasswords")
	private String userPassWords;
	@Column(name ="UserStatus")
	private boolean userStatus;
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name ="USER_ROLE", joinColumns = @JoinColumn(name="UserId"),
	inverseJoinColumns = @JoinColumn(name ="RoleId"))
	private List<Role> roles = new ArrayList<>();

	public Users(int userId, String userName, String userPassWords, boolean userStatus, List<Role> roles) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPassWords = userPassWords;
		this.userStatus = userStatus;
		this.roles = roles;
	}

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassWords() {
		return userPassWords;
	}

	public void setUserPassWords(String userPassWords) {
		this.userPassWords = userPassWords;
	}

	public boolean isUserStatus() {
		return userStatus;
	}

	public void setUserStatus(boolean userStatus) {
		this.userStatus = userStatus;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}
	
	
}
