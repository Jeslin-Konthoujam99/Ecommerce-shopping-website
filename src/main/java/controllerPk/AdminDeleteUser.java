package controllerPk;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminDeleteUser
 */
@WebServlet("/AdminDeleteUser")
public class AdminDeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		 String url  = "jdbc:mysql://localhost:3306/newname"; 
		String USER = "root";
		 String PASS = "root";
		 String username =request.getParameter("username");
		 
		
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

				PreparedStatement pstmt=con.prepareStatement("DELETE FROM tileusers WHERE username = ?");
				
				
				pstmt.setString(1,username);
				
				 pstmt.executeUpdate();
				 
				 System.out.println("User deleted successfully");
				 
				 PrintWriter out = response.getWriter();
					response.setContentType("text/html");
					out.println("<p class='fs-1 fst-italic bg-danger text-center' > User deleted successfully .</p>");
					RequestDispatcher rd = request.getRequestDispatcher("/admin_dashboard.jsp");
					rd.include(request, response);

				
			    
			   
			}
			catch(SQLException e)
			{
				System.out.println("user deletion  failed"+e);
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				out.println("<p class='fs-1 fst-italic bg-danger text-center' > Unable to delete . please retry after relaod.</p>");
				RequestDispatcher rd = request.getRequestDispatcher("/admin_dashboard.jsp");
				rd.include(request, response);
			
			}


		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
