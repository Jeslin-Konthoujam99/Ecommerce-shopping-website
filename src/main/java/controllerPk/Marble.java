package controllerPk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daoPk.TileDao;
import objectPk.Tile;
import objectPk.User;


@WebServlet("/Marble")
public class Marble extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Marble() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);  
	    User user=(User)session.getAttribute("user");  
		
	     if(user!= null) {
			
			
			String name= request.getParameter("name");
			String image=request.getParameter("image");
			System.out.println("name , image recieved from form" +name +image);
			int price=Integer.parseInt( request.getParameter("price") );
			System.out.println("price recieved from form"+price);
			int qty=Integer.parseInt( request.getParameter("qty") );
			System.out.println("qty recieved from form"+qty);
			
			

			Tile tile=new Tile();
			tile.setName(name);
			tile.setImage(image);
			tile.setPrice(price);
			tile.setQty(qty);
			
			
			TileDao tile_dao = new TileDao();
			int row=tile_dao.addToCart(tile, user);
			if(row>0)
			{
				System.out.println("tile added to cart");
			}
			else
			{
				System.out.println("tile not added to cart");
			}
			
			RequestDispatcher rd=request.getRequestDispatcher("/cart.jsp");  
		    rd.forward(request, response); 

	     }
	     else
	     {
	    	 RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");  
			    rd.forward(request, response); 
 
	     }
			
		
		
		
				
		
		
		
		
		
		
		
		
		
		
		
	}

}
