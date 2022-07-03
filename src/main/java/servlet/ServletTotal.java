package servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connect.Dao;

/**
 * Servlet implementation class ServletTotal
 */
@WebServlet("/ServletTotal")
public class ServletTotal extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
		String a = request.getParameter("from");
		String b = request.getParameter("to");
		
		Dao dao = new Dao();
		Vector u = dao.tong(a, b);
		long h = dao.total(a, b);
		System.out.println(u.get(0));
		System.out.println(h);
		
		request.setAttribute("UU", u);
		request.setAttribute("RRR", h);
		RequestDispatcher rd = request.getRequestDispatcher("total.jsp");
		rd.forward(request, response);
	}

}
