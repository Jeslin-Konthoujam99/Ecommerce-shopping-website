package controllerPk;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daoPk.SignupDao;
import objectPk.User;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
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
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		User user =new User();
		user.setUsername(username);
		user.setPassword(password);
		
		SignupDao signup =new SignupDao();
		boolean b = signup.validate(user);
		System.out.println("validation result" + b);
		if(b==true)
		{
			HttpSession session=request.getSession();  
		    session.setAttribute("user",user);
			
			RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
		    rd.forward(request, response); 
			
		}
		else
		{
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			out.println("<p class='fs-1 fst-italic bg-danger text-center' >WRONG DETAILS . PLZ TRY AGAIN .</p>");
			RequestDispatcher rd = request.getRequestDispatcher("/signup.jsp");
			rd.include(request, response);
			//RequestDispatcher rd=request.getRequestDispatcher("/signup.html");  
		    //rd.forward(request, response); 
			
		}
		
	}

}
