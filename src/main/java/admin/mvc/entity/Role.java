package admin.mvc.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;



@Entity
@Table(name ="ROLES")
public class Role extends BaseEntity{

	@Id
	@Column(name = "RoleId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int roleId;
	@Column( name ="RoleName")
	private String roleName;
	@Column(name ="RoleStatus")
	private boolean roleStatus;
	
	@ManyToMany(mappedBy = "roles")
	private List<Users> users = new ArrayList<>();

	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Role(int roleId, String roleName, boolean roleStatus, List<Users> users) {
		super();
		this.roleId = roleId;
		this.roleName = roleName;
		this.roleStatus = roleStatus;
		this.users = users;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public boolean isRoleStatus() {
		return roleStatus;
	}

	public void setRoleStatus(boolean roleStatus) {
		this.roleStatus = roleStatus;
	}

	public List<Users> getUsers() {
		return users;
	}

	public void setUsers(List<Users> users) {
		this.users = users;
	}
	
	
}
