package controllerPk;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoPk.SortMarblePriceAscDao;
import objectPk.Sort;

/**
 * Servlet implementation class SortMarblePriceAsc
 */
@WebServlet("/SortMarblePriceAsc")
public class SortMarblePriceAsc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SortMarblePriceAsc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int from = Integer.parseInt( request.getParameter("from") );
		int to = Integer.parseInt( request.getParameter("to") );
		
		Sort from_to = new Sort ();
		from_to.setFrom(from);
		from_to.setTo(to);
		
		SortMarblePriceAscDao sortMarblePriceAsc = new SortMarblePriceAscDao() ;
		ResultSet res = sortMarblePriceAsc.sort_marble_price_asc(from , to);
		
		request.setAttribute("res", res);
		RequestDispatcher rd = request.getRequestDispatcher("/filter_all_by_price.jsp");
		rd.forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
