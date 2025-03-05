package controllerPk;

import java.io.IOException;
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
import javax.servlet.http.HttpSession;

import daoPk.ContactUsDao;
import objectPk.Customer;
/**
 * Servlet implementation class Contact
 */
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
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
		
		
		String message=request.getParameter("message");
		System.out.println(message);
		String email = request.getParameter("email");
		
		Customer customer1=new Customer();
		customer1.setMessage(message);
		customer1.setEmail(email);
		
		HttpSession session=request.getSession();
	 
	    session.setAttribute("customer",customer1);
		
		
		ContactUsDao contact_dao =new ContactUsDao();
		
		int row =contact_dao.createContact(customer1);
		
		if(row>0)
		{
			System.out.println(" submitted successfully");
		}
		else
		{
			System.out.println("submitted failed");
		}
		
		RequestDispatcher rd=request.getRequestDispatcher("/contact_thanks.jsp");  
	    rd.forward(request, response); 
		


		
		
		
		
		
		
	}

}
