package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connect.Dao;

/**
 * Servlet implementation class ServletDelete
 */
@WebServlet("/ServletDelete")
public class ServletDelete extends HttpServlet {
	private final String deleteErr = "hvcnhp.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("to");
		String[] a = user.split("-");
		Dao dao = new Dao();
		boolean r;
		try {
			r = dao.delete(a[1]);
			String url = deleteErr;
			if (r) {
				url = "hvcnhp.jsp";
			}
			response.sendRedirect(url);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("to");
		String[] a = user.split("-");
		Dao dao = new Dao();
		boolean r;
		try {
			r = dao.delete(a[1]);
			String url = deleteErr;
			if (r) {
				url = "hvcnhp.jsp";
			}
			response.sendRedirect(url);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}}

}
