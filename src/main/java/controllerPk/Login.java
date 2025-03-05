package controllerPk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daoPk.UserLoginDao;
import objectPk.User;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("fname");
		String address=request.getParameter("faddress");
		String email=request.getParameter("femail");
		String username=request.getParameter("fusername");
		String password=request.getParameter("fpassword");
		
		  
		
		User user1 =new User();
		
		user1.setName(name);
		user1.setAddress(address);
		user1.setEmail(email);
		user1.setUsername(username);
		user1.setPassword(password);
		
		
		HttpSession session=request.getSession();  
	    session.setAttribute("user",user1);
		
		
		UserLoginDao login_dao =new UserLoginDao();
		
		login_dao.createUserCart(user1);
		
		RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
	    rd.forward(request, response); 

		
		
		
		
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	}

}
