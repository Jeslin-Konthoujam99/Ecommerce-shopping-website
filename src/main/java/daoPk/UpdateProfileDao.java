package daoPk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import objectPk.User;

public class UpdateProfileDao 
{

	static final String url  = "jdbc:mysql://localhost:3306/newname"; 
	static final String USER = "root";
	static final String PASS = "root";
	
	
	
	
	
	public int updateProfile( User user) 
	{

		Connection con=null;
		int row=0;
		
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

			PreparedStatement pstmt=con.prepareStatement("UPDATE tileusers SET name = ? , address=? , email=? , password=? WHERE username=?");
			
			
			pstmt.setString(1,user.getName());
			pstmt.setString(2,user.getAddress());
			pstmt.setString(3,user.getEmail());
			pstmt.setString(4,user.getPassword());
			pstmt.setString(5,user.getUsername());
			
			row=pstmt.executeUpdate();

			System.out.println("Data updated into tileusers table successfully");
		    
		   
		}
		catch(SQLException e)
		{
			System.out.println("table updation  failed     "+e);
		}

		return row;
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
