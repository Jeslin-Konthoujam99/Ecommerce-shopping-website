package daoPk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteItemDao 
{

	static final String url  = "jdbc:mysql://localhost:3306/newname"; 
	static final String USER = "root";
	static final String PASS = "root";

	
	
	
	public int delete_item(String item_name, String table_name)
	{

		int row=0;
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

			PreparedStatement pstmt=con.prepareStatement("DELETE FROM "+table_name+" WHERE itemName = ?");
			
			
			pstmt.setString(1,item_name);
			
			row= pstmt.executeUpdate();

			System.out.println("Data deleted successfully");
		    
		   
		}
		catch(SQLException e)
		{
			System.out.println("table deletion  failed"+e);
		}

		return row;
		
		
		
		
	}

}
