package servlet;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import connect.Dao;

/**
 * Servlet implementation class ServletNHP
 */
@MultipartConfig
@WebServlet("/ServletNHP")
public class ServletNHP extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
		String ntt= request.getParameter("ntt");
		String sotien= request.getParameter("sotien");
		Dao dao = new Dao();
		String u = request.getServletContext().getRealPath("/uploads");
		Path uppath = Paths.get(u);
		
		if(!Files.exists(uppath)) {
			Files.createDirectory(uppath);
		}
		
		Part imgPart = request.getPart("ha");
		
		
		String imgname = Path.of(imgPart.getSubmittedFileName()).getFileName().toString();
		
		imgPart.write(Paths.get(uppath.toString(), imgname).toString());
		dao.luuNop(dao.layUser(), ntt, sotien, imgname);
		response.sendRedirect("nophocphi.jsp");
		System.out.println(imgname);
	}

}
