package controllerPk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daoPk.DeleteItemDao;
import objectPk.User;

/**
 * Servlet implementation class DeleteItem
 */
@WebServlet("/DeleteItem")
public class DeleteItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteItem() {
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
		
		
		String item_name= request.getParameter("name");

		HttpSession session=request.getSession(false);  
	    User user=(User)session.getAttribute("user"); 
	    
	    DeleteItemDao dld = new DeleteItemDao();
	    int row= dld.delete_item(item_name , user.getUsername());
	    
	    if(row>0)
		{
			System.out.println("tile deleted from cart");
		}
		else
		{
			System.out.println("tile not deleted from  cart . some problem .... ");
		}
		
		RequestDispatcher rd=request.getRequestDispatcher("/cart.jsp");  
	    rd.forward(request, response); 
		
		
	}

}
