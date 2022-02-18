package Ch01;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Servlet00.do")
public class C00Servlet extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		// 최초 접근시 설정할 코드
		System.out.println("INIT 함수 호출!");
	}

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		// 페이지 새로 고칠때마다 동작
		System.out.println("Service 함수 호출!");
	}

	@Override
	public void destroy() {
		// 코드 수정시나, 서비스 종료시 동작
		System.out.println("Destroy 함수 호출!");
	}

	
	
	
}
