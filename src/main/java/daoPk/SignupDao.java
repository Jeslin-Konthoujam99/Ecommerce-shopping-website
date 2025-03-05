package daoPk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import objectPk.User;

public class SignupDao 
{

	public boolean validate(User user) 
	{
		 String url  = "jdbc:mysql://localhost:3306/newname"; 
		 String USER = "root";
		 String PASS = "root";
		 boolean b = false ;
		
		Statement stmt = null;
		ResultSet res = null;
		Connection con = null;
		
		try
		{
	       Class.forName("com.mysql.cj.jdbc.Driver"); 
	       System.out.println("Driver loaded successfully");
		}
		catch(Exception e)
		{
			System.out.println("Failed");
		}
		
		try
		{
			con=DriverManager.getConnection(url,USER,PASS);
			System.out.println("Connection is established successfully");
			
		}
		catch(Exception e)
		{
			System.out.println("Connection is failed");
		}

		try
		{
			stmt = con.createStatement();
			res= stmt.executeQuery("SELECT * FROM tileusers");
			System.out.println("QUERY EXECUTED SUCCESSFULLY");
		}
		catch(Exception e)
		{
			System.out.println("QUERY failed");
		}
		
		try 
		{
			while (res.next())
			{
					
					 String username = res.getString ("username");//provide coloum name . 
					 String password = res.getString("password");
					 String name= res.getString("name");
					 String address = res.getString("address");
					 String email = res.getString("email");
					 System.out.println(username +"  "+ user.getUsername() +"  "+ password +"  "+ user.getPassword());
					 
					 if (username.equals(user.getUsername()) && password.equals(user.getPassword()) )
					 {
						 System.out.println("validated ! success!");
						 user.setName(name);
						 user.setAddress(address);
						 user.setEmail(email);
						 b=true ;
						 break;
						 
					 }
			}
		} 
		catch (SQLException e) 
		{
			System.out.println("Unable to fetch data from database");
		}
	

		return b;
		
		
		
		
		
		
	}
	
	

}