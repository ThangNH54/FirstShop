package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.protocol.Resultset;
import dao.ConnectDatabase;

import models.Customer;

public class CustomerDao {
	
	public static Customer customer=null;
	
	public static Customer getInfoCustomer(String userName)
	{
		customer=null;
		String sqlCommand="Select * from account where UserName='"+userName+"' or Email='"+userName+"';";
		
		ResultSet rs=ConnectDatabase.retrieveData(sqlCommand);
		if(rs!=null)
		{
			try {
				while(rs.next())
				{
					customer=new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getLong(7), rs.getString(8), rs.getString(9), rs.getString(10));
				}
			} catch (SQLException e) {
				customer=null;
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return customer;
	}
	
	public static boolean insertCustomer(Customer tmp)
	{
		try {
			tmp.setID(tmp.getEmail());
			
			String sqlCommand="insert into account(`ID`, `UserName`, `Email`, `Password`, `FirstName`, `LastName`,`Phone`,`Addr`,`Sex`,`UrlAvatar`,`Admin`) value(?,?,?,?,?,?,?,?,?,?,?);";
			PreparedStatement stmt=ConnectDatabase.getConnection().prepareStatement(sqlCommand);
			stmt.setString(1, tmp.getID());
			stmt.setString(2, tmp.getUserName());
			stmt.setString(3, tmp.getEmail());
			stmt.setString(4, tmp.getPassword());
			stmt.setString(5, tmp.getFirstName());
			stmt.setString(6, tmp.getLastName());
			stmt.setLong(7, tmp.getPhone());
			stmt.setString(8, tmp.getAddr());
			stmt.setString(9, tmp.getSex());
			stmt.setString(10, tmp.getUrlAvatar());
			stmt.setBoolean(11,false);
			stmt.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

		return true;
	}
}
