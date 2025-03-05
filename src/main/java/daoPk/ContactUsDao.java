package daoPk;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import objectPk.Customer;

public class ContactUsDao {
	static final String url  = "jdbc:mysql://localhost:3306/ecommerce"; 
	static final String USER = "root";
	static final String PASS = "Jes@sql123";

	public int createContact(Customer customer1) {
		
		
			// TODO Auto-generated method stub
			
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
	
				PreparedStatement pstmt=con.prepareStatement("INSERT INTO contactus ( Message ,Email ) VALUES(?,?)");
				
				
				
				pstmt.setString(1,customer1.getMessage());
				pstmt.setString(2,customer1.getEmail());
				
				
				 
			    row=pstmt.executeUpdate();

				System.out.println("sumitted successfully");
			    
			   
			}
			catch(SQLException e)
			{
				System.out.println("submit failed"+e);
			}
			
			return row;
			
		}
	

}
