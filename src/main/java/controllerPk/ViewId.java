package controllerPk;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewId
 */
@WebServlet("/ViewId")
public class ViewId extends HttpServlet {
	static final String url  = "jdbc:mysql://localhost:3306/newname"; 
	static final String USER = "root";
	static final String PASS = "root";
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewId() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
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
			PreparedStatement pstmt=con.prepareStatement("SELECT id FROM admin_wannabe WHERE username = ? ");
		
			pstmt.setString(1,username);
		
			ResultSet res = pstmt.executeQuery();
			System.out.println("execute query done ");
			if(res.next())
			{
				System.out.println("in if ");
				 // Get the BLOB object from the ResultSet object
		        Blob blob = res.getBlob("id");

		        // Get the bytes from the BLOB object
		        byte[] bytes = blob.getBytes(1, (int) blob.length());

		        // Create an OutputStream object to write the bytes to a file
		        FileOutputStream fileOutputStream = new FileOutputStream(new File("C:\\Users\\Ngaaaa\\eclipse-workspace\\TILES\\src\\main\\webapp\\images\\id"+username+".pdf"));

		        // Write the bytes to the file
		        fileOutputStream.write(bytes);

		        // Close the OutputStream object
		        fileOutputStream.close();

		 
		        
		        PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				out.println("<p class='fs-1 fst-italic bg-danger text-center' > id successfull. plz wait for admin authorization.</p>");
				request.setAttribute("id","images\\id"+username+".pdf");
				RequestDispatcher rd = request.getRequestDispatcher("/test.jsp");
				rd.include(request, response);
			}

		
		   
		}
		catch(Exception e)
		{
			System.out.println("data view from  admin_wannabe failed          "+e);
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			out.println("<p class='fs-1 fst-italic bg-danger text-center' > error not successfull. plz wait for admin authorization.</p>");
			RequestDispatcher rd = request.getRequestDispatcher("/test.html");
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
