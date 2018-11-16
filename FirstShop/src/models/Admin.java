package models;

public class Admin extends User{
	private boolean isAdmin;

	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin(String iD, String userName, String email, String password, String firstName, String lastName,
			long phone, String addr, String sex, String urlAvatar,boolean isAdmin) {
		super(iD, userName, email, password, firstName, lastName, phone, addr, sex, urlAvatar);
		this.isAdmin=isAdmin;
		// TODO Auto-generated constructor stub
	}

	public boolean isAdmin() {
		return isAdmin;
	}

	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	
	
	
}
