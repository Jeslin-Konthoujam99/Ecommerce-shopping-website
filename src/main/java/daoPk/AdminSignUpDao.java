package daoPk;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.Part;

import objectPk.Admin;

public class AdminSignUpDao 
{
	static final String url  = "jdbc:mysql://localhost:3306/newname"; 
	static final String USER = "root";
	static final String PASS = "root";

	
	public int createAdmin(Admin admin) 
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

			PreparedStatement pstmt=con.prepareStatement("INSERT INTO admin_wannabe ( name , address , email , username , password , image , id ) VALUES(?,?,?,?,?,?,?)");
			
			 //  FileInputStream fin=new FileInputStream("D:\\testout.txt");   
			 Part imagePart = admin.getImage();
			 Part idPart = admin.getId();
			 InputStream imageStream = imagePart.getInputStream();
			 InputStream idStream = idPart.getInputStream();
			
			pstmt.setString(1,admin.getName());
			pstmt.setString(2,admin.getAddress());
			pstmt.setString(3,admin.getEmail());
			pstmt.setString(4,admin.getUsername());
			pstmt.setString(5,admin.getPassword());
			
			 pstmt.setBinaryStream(6, imageStream);
			 pstmt.setBinaryStream(6, idStream);
			
			row = pstmt.executeUpdate();

			System.out.println("Data inserted into admin_wannabe table successfully");
		    
		   
		}
		catch(Exception e)
		{
			System.out.println("table creation failed"+e);
		}
		
		return row;
		
	}

}
