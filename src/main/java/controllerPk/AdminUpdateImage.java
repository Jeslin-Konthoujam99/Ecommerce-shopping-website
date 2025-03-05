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
 * Servlet implementation class AdminUpdateImage
 */
@WebServlet("/AdminUpdateImage")
public class AdminUpdateImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUpdateImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String newimage = request.getParameter("newimage");
		String oldimage =request.getParameter("oldimage");
		String column = request.getParameter("column");
		
		

		 String url  = "jdbc:mysql://localhost:3306/newname"; 
		String USER = "root";
		 String PASS = "root";
		
		
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

				PreparedStatement pstmt=con.prepareStatement("UPDATE images set "+column+" = ? WHERE "+column+" = ? ");

				pstmt.setString(1,newimage);
				pstmt.setString(2,oldimage);
			
				 pstmt.executeUpdate();
				 
				 System.out.println("Image Updated successfully");
				 
				 PrintWriter out = response.getWriter();
					response.setContentType("text/html");
					out.println("<p class='fs-1 fst-italic bg-danger text-center' > Image Updated successfully .</p>");
					RequestDispatcher rd = request.getRequestDispatcher("/admin_dashboard.jsp");
					rd.include(request, response);

				
			    
			   
			}
			catch(SQLException e)
			{
				System.out.println(" update  failed   "+e);
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				out.println("<p class='fs-1 fst-italic bg-danger text-center' > Unable to update . please retry after relaod.</p>");
				RequestDispatcher rd = request.getRequestDispatcher("/admin_dashboard.jsp");
				rd.include(request, response);
			
			}


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
