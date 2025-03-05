package daoPk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SortMarblePriceAscDao {
	
	

	static final String url  = "jdbc:mysql://localhost:3306/newname"; 
	static final String USER = "root";
	static final String PASS = "root";

	
	public ResultSet sort_marble_price_asc(int from,int to)
	{

		Connection con=null;
		ResultSet resultset=null;
		
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
			
			Statement statement = con.createStatement() ;
	        resultset = statement.executeQuery("select * from alltiles where price between "+from+" and "+ to) ; 
	       

			
			System.out.println("Sort resultset retrieved successfully");
		    
		   
		}
		catch(SQLException e)
		{
			System.out.println("sort  failed    "+e);
		}

		
		return resultset;
		
		
		
		
		
		
	}

	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
