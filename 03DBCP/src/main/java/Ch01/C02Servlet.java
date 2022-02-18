package Ch01;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Servlet02.do")
public class C02Servlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("userid");
		String pw = req.getParameter("pwd");
		System.out.println("ID : "+id);
		System.out.println("PW : "+pw);
		
		resp.sendRedirect("/Ch01/02Main.jsp");
	}
	
	

}
