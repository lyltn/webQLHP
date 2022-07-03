package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connect.Dao;

/**
 * Servlet implementation class ServletUpdate
 */
@WebServlet("/ServletUpdate")
public class ServletUpdate extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
		String a = request.getParameter("id");
		String b = request.getParameter("name");
		String c = request.getParameter("sdt");
		String d = request.getParameter("nvh");
		String e = request.getParameter("idkh");
		Dao dao = new Dao();
		boolean r = dao.Update(a, b, c, d, e);
		if(r)
			response.sendRedirect("hvcnhp.jsp");
	}

}
