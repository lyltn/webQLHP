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
 * Servlet implementation class ServletSearch
 */
@WebServlet("/ServletSearch")
public class ServletSearch extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
		String a = request.getParameter("id");
		String b = request.getParameter("name");
		String c = request.getParameter("tenkh");
		String d = request.getParameter("sdt");
		String e = request.getParameter("nvh");
		String f = request.getParameter("nn");
		String g = request.getParameter("t");
		Dao dao = new Dao();
		Vector u = dao.danhSach(a, b, c, e, d, f, g);
		request.setAttribute("UU", u);
		RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
		rd.forward(request, response);
	}

}
