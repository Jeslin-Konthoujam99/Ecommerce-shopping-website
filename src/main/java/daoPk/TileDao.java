package daoPk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import objectPk.Tile;
import objectPk.User;

public class TileDao 
{

	static final String url  = "jdbc:mysql://localhost:3306/newname"; 
	static final String USER = "root";
	static final String PASS = "root";

	
	
	public int addToCart(Tile tile, User user) 
	{
		System.out.println("username : "+ user.getUsername());

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

			PreparedStatement pstmt=con.prepareStatement("INSERT INTO "+user.getUsername()+" ( itemName , itemImage , itemPrice , qty , totalPrice ) VALUES(?,?,?,?,?)");
			
			
			pstmt.setString(1,tile.getName());
			pstmt.setString(2,tile.getImage());
			pstmt.setInt(3,tile.getPrice());
			pstmt.setInt(4,tile.getQty());
			pstmt.setInt(5,tile.getPrice()*tile.getQty());
			
			row= pstmt.executeUpdate();

			System.out.println("Data inserted successfully");
		    
		   
		}
		catch(SQLException e)
		{
			System.out.println("table creation failed"+e);
		}
		return row;
		
	}
	

}
