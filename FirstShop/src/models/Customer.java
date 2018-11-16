package models;

import dao.CustomerDao;

public class Customer extends User{
	
	
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Customer(String iD, String userName, String email, String password, String firstName, String lastName,
			long phone, String addr, String sex, String urlAvatar) {
		super(iD, userName, email, password, firstName, lastName, phone, addr, sex, urlAvatar);
		// TODO Auto-generated constructor stub
	}

	public static Customer login(String userName,String password)
	{
		CustomerDao.getInfoCustomer(userName);
		if(CustomerDao.customer!=null&&CustomerDao.customer.getPassword().equals(password))
		{
			return CustomerDao.customer;
		}
		else return null;
	}
    public static boolean register(Customer tmp)
    {
    	if(CustomerDao.insertCustomer(tmp))
    	{
    		return true;
    	}
    	else return false;
    }
}
