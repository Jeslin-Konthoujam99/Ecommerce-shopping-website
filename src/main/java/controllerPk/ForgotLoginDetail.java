package controllerPk;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import objectPk.User;



/**
 * Servlet implementation class ForgotLoginDetail
 */
@WebServlet("/ForgotLoginDetail")
public class ForgotLoginDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotLoginDetail() {
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

		String email = request.getParameter("email");
		
		

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

				Statement stmt = con.createStatement();
				ResultSet res= stmt.executeQuery("SELECT * FROM tileusers where email = '"+email+"'");
				

				while (res.next())
				{
					
					
				User user = new User();
				user.setName(res.getString(1));
				user.setAddress(res.getString(2));
				user.setEmail(res.getString(3));
				user.setUsername(res.getString(4));
				user.setPassword(res.getString(5));

			
				HttpSession session=request.getSession();  
			    session.setAttribute("user",user);
			
				 
				 System.out.println("Data retieved  successfully");
				 
				
					RequestDispatcher rd = request.getRequestDispatcher("/retrieve_details.jsp");
					rd.forward(request, response);

				}
			    
			   
			}
			catch(SQLException e)
			{
				System.out.println("table add data    failed   "+e);
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				out.println("<p class='fs-1 fst-italic bg-danger text-center' > Unable to retrieve data . please retry after relaod.</p>");
				RequestDispatcher rd = request.getRequestDispatcher("/signup.jsp");
				rd.include(request, response);
			
			}


		
		
		
		
	}

}
