import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/download.do")
public class C02DownloadTEST extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//경로설정
		String updir = "c:\\upload";
		String filename = req.getParameter("filename");
		String filepath = updir+File.separator+filename;
		
		
		 
		//파일명 UTF-8으로 인코딩(한글파일)
		filename=URLEncoder.encode(filename,"utf-8").replaceAll("\\+", "%20");
		
	
		//MIME 타입설정
		resp.setContentType("application/octet-stream");
		//헤더 설정
		resp.setHeader("Content-Disposition", "attachment; fileName= "+filename);

		
		
		
		byte[] buff = new byte[4096];
		FileInputStream fin = new FileInputStream(filepath);//파일 -> 서버 방향의 스트림
		ServletOutputStream bout = resp.getOutputStream(); //서버 -> 클라이언트(브라우저) 방향의 스트림
		
		int read;
		while(true)
		{
			read = fin.read(buff,0,buff.length);
			if(read==-1) {
				break;
			}
			bout.write(buff,0,read);
		}
		bout.flush();
		bout.close();
		fin.close();
		
		System.out.println("다운로드 완료!");
	}

	
}
