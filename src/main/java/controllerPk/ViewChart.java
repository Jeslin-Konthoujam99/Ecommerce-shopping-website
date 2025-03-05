package controllerPk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewChart
 */
@WebServlet("/ViewChart")
public class ViewChart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewChart() {
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
		
		int no1 = Integer.parseInt(request.getParameter("username1"));
		int no2 = Integer.parseInt(request.getParameter("username2"));
		int no3 = Integer.parseInt(request.getParameter("username3"));
		int no4 = Integer.parseInt(request.getParameter("username4"));
		int no5 = Integer.parseInt(request.getParameter("username5"));
		int no6 = Integer.parseInt(request.getParameter("username6"));
		
		
		request.setAttribute("no1",no1);
		request.setAttribute("no2",no2);
		request.setAttribute("no3",no3);
		request.setAttribute("no4",no4);
		request.setAttribute("no5",no5);
		request.setAttribute("no6",no6);
		RequestDispatcher rd = request.getRequestDispatcher("/test2.jsp");
		rd.include(request, response);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
