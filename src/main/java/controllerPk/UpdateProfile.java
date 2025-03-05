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

import daoPk.UpdateProfileDao;
import objectPk.User;

/**
 * Servlet implementation class UpdateProfile
 */
@WebServlet("/UpdateProfile")
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfile() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);  
	    User user=(User)session.getAttribute("user");  
		
		String name=request.getParameter("fname");
		String address=request.getParameter("faddress");
		String email=request.getParameter("femail");
		String password=request.getParameter("fpassword");
		
		  
		
		
		user.setName(name);
		user.setAddress(address);
		user.setEmail(email);
		user.setPassword(password);
		
		UpdateProfileDao upd =new UpdateProfileDao();
		int row= upd.updateProfile(user);
		
		if(row>0) {
		RequestDispatcher rd=request.getRequestDispatcher("/profile.jsp");  
	    rd.forward(request, response); 
		}
		else
		{
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			out.println("<p class='fs-1 fst-italic bg-danger text-center' >WRONG DETAILS . PLZ TRY AGAIN .</p>");
			RequestDispatcher rd = request.getRequestDispatcher("/profile_edit.jsp");
			rd.include(request, response);
			
		}
		
		
		
		
		
		
		
		
		
	}

}
