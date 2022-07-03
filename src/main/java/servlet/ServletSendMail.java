package servlet;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletSendMail
 */
@MultipartConfig
@WebServlet("/ServletSendMail")
public class ServletSendMail extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        
      
       final String username = "lyltn.21it@vku.udn.vn";
//		final String password = "1234ngocly";
       final String password = "ngocly2711";
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "587");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true");

		Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		String emailTo = request.getParameter("to");
		String emailSubject = request.getParameter("subject");
		String emailContent = request.getParameter("message");
		try {
			Message mess = new MimeMessage(session);
			mess.setFrom(new InternetAddress(username));
			mess.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailTo));
			mess.setSubject(emailSubject);
			mess.setText(emailContent);
			Transport.send(mess);
			System.out.println("send mail successfully");
			request.getRequestDispatcher("hvcnhp.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
	 
	}

}
