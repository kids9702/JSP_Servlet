package Ch01;

import java.io.IOException;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/loginproc1.do")
public class Loginproc1 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("userid");
		String pw = req.getParameter("pwd");
		System.out.println("ID : "+id);
		System.out.println("PW : "+pw);
		
		//01Forwarding
		//req.getRequestDispatcher("/Ch01/03Main.jsp").forward(req, resp);	//기존의 req를???
		
		//02Redirct		
		resp.sendRedirect("/Ch01/03Main.jsp?id="+id+"&pw"+pw);
	}	
	

	
}
