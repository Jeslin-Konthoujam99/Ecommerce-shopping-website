package daoPk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;


import objectPk.User;


public class UserLoginDao {
	
	static final String url  = "jdbc:mysql://localhost:3306/newname"; 
	static final String USER = "root";
	static final String PASS = "root";

	
	
	public void createUserCart(User user1) 
	{

		
		Connection con=null;
		
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

			PreparedStatement pstmt=con.prepareStatement("INSERT INTO tileusers ( name , address , email , username , password ) VALUES(?,?,?,?,?)");
			
			
			pstmt.setString(1,user1.getName());
			pstmt.setString(2,user1.getAddress());
			pstmt.setString(3,user1.getEmail());
			pstmt.setString(4,user1.getUsername());
			pstmt.setString(5,user1.getPassword());
			
			pstmt.executeUpdate();

			System.out.println("Data inserted into tileusers table successfully");
		    
		   
		}
		catch(SQLException e)
		{
			System.out.println("table creation failed"+e);
		}

		try
		{
			// Create a new statement.
		    Statement stmt = con.createStatement();
		    
		    String sql = "CREATE TABLE " + user1.getUsername() +
	                   "(itemName VARCHAR(50), " + 
	                   " itemImage VARCHAR(255), "+
	                   " itemPrice INTEGER, " + 
	                   " qty INTEGER, " + 
	                   " totalPrice INTEGER )"; 

	        stmt.executeUpdate(sql);
	        
	       System.out.println("created table succesfully");
		    // Close the statement.
		    stmt.close();
		    
		   
		}
		catch(SQLException e)
		{
			System.out.println("table creation failed");
		}
		
		
	}
	


}
