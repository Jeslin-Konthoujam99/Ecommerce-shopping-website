package controllerPk;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import daoPk.AdminSignUpDao;
import objectPk.Admin;


/**
 * Servlet implementation class Test
 */
@WebServlet("/Test")
@MultipartConfig(maxFileSize=1024*1024*10)
public class Test extends HttpServlet {
	static final String url  = "jdbc:mysql://localhost:3306/newname"; 
	static final String USER = "root";
	static final String PASS = "root";
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in servlet ");
		int row=0;
		String name="ak";
		String address="ak";
		String email="ak@123";
		String username="ak2";
		String password="ak";
		
		//String name=request.getParameter("fname");
	//	String address=request.getParameter("faddress");
	//	String email=request.getParameter("femail");
	//	String username=request.getParameter("fusername");
	//	String password=request.getParameter("fpassword");
		
		 Part imagePart = request.getPart("fid");
	    
	     InputStream imageStream = imagePart.getInputStream();
	   
	     System.out.println(" part suceess");
	     
	     if(imagePart != null )
	     {
	    	
	    	System.out.println("in if ");
//	    	 
//	 		Admin admin =new Admin();
//	 		
//	 		admin.setName(name);
//	 		admin.setAddress(address);
//	 		admin.setEmail(email);
//	 		admin.setUsername(username);
//	 		admin.setPassword(password);
//	 		admin.setImage(imagePart);
//	 		admin.setId(imagePart);
	 		
	 	
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
				System.out.println("before preparedstatement ");
				PreparedStatement pstmt=con.prepareStatement("UPDATE admin_wannabe SET id=?  WHERE USERNAME=?");
				
				
//				pstmt.setString(1,admin.getName());
//				pstmt.setString(2,admin.getAddress());
//				pstmt.setString(3,admin.getEmail());
//				pstmt.setString(4,admin.getUsername());
//				pstmt.setString(5,admin.getPassword());
				pstmt.setBlob(1, imageStream);
			
				pstmt.setString(2,username);
			
				
				
				
				
				row = pstmt.executeUpdate();

				System.out.println("Data inserted into admin_wannabe table successfully");
			    
			   
			}
			catch(Exception e)
			{
				System.out.println("data insertion into admin_wannabe failed          "+e);
			}
			
	 	    
	     }
	  
	
	
		

		
		//int row = admin_signUp_dao.createAdmin(user1);
		if(row>0) 
		{
			 PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				out.println("<p class='fs-1 fst-italic bg-danger text-center' > Sign Up successfull. plz wait for admin authorization.</p>");
				RequestDispatcher rd = request.getRequestDispatcher("/admin.html");
				rd.include(request, response);
 
		    
		}
		else 
		{
			 PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				out.println("<p class='fs-1 fst-italic bg-danger text-center' > Sign Up Failed. Plz try again.</p>");
				RequestDispatcher rd = request.getRequestDispatcher("/admin_signup.html");
				rd.include(request, response);

		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
