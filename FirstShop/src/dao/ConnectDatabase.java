package dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class ConnectDatabase {

	private static String driver;
	private static String url;
	private static String user;
	private static String password;
	public static Connection connection;
	private static Statement statement;
	
	
	
	public static String getDriver() {
		return driver;
	}

	public static void setDriver(String driver) {
		ConnectDatabase.driver = driver;
	}

	public static String getUrl() {
		return url;
	}

	public static void setUrl(String url) {
		ConnectDatabase.url = url;
	}

	public static String getUser() {
		return user;
	}

	public static void setUser(String user) {
		ConnectDatabase.user = user;
	}

	public static String getPassword() {
		return password;
	}

	public static void setPassword(String password) {
		ConnectDatabase.password = password;
	}

	public static Connection getConnection() {
		return connection;
	}

	public static void setConnection(Connection connection) {
		ConnectDatabase.connection = connection;
	}

	public static Statement getStatement() {
		return statement;
	}

	public static void setStatement(Statement statement) {
		ConnectDatabase.statement = statement;
	}

	//dsmsType su dung biet db se su dung vd 0=mysql , 1=oracle...
	public static boolean initialize(int dbmsType)
	{
		Properties p=new Properties();
		try {

			switch(dbmsType)
			{
				
				case 0:
				{
					//mysql
					Class.forName(driver);
					
					connection=DriverManager.getConnection(url,user,password);
					break;
				}
				case 1 :
				{
					//sql server
					break;
				}
				default :
				{
					throw new IllegalArgumentException("invalid dbms type");
				}
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(connection==null)
		{
			throw new NullPointerException("connect erro");
			
		}
		return true;
	}
	
	public  static Statement createStatement()
	{
		if(statement==null)
		{
			try {
				statement=connection.createStatement();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return statement;
	}
	
	public static ResultSet retrieveData(String sqlCommand)
	{
		try {
			//su dung 1 trong 2 cach , uu tien cach so 2
			//cach 1
			//createStatement();
		//	ResultSet resultSet=statement.executeQuery(sqlCommand);
			//cach 2
			PreparedStatement ps=connection.prepareStatement(sqlCommand);
			ResultSet resultSet=ps.executeQuery(sqlCommand);
			return resultSet;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
