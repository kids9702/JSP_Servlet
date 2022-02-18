import java.io.File;
import java.io.IOException;
import java.util.UUID;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/C01Upload.do")
@MultipartConfig(
		fileSizeThreshold=1024*1024*10,	//10MB
		maxFileSize=1024*1024*50,		//50Mb
		maxRequestSize=1024*1024*100	//100Mb
		//location="c:/upload"
		)
//maxFileSize : 업로드 가능한 파일의 최대 크기를 바이트 단위로 지정, -1은 제한없음을 의미(기본값)
//maxRequestSize :  전체 Multipart 요청 데이터의 최대 제한 크기, -1은 제한없음을 의미(기본값)
//fileSizeThreshold : 업로드한 파일의 크기가 태그값보다 크면 location에 지정한 디렉토리에 임시로 저장
//location : 업로드한 파일이 임시로 저장될 위치. 절대경로로만 설정가능. 기본값은 자바가 실행되는 위치의 temp폴더

public class C01UploadTest extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//여기서 전달한 req에 파일정보를 꺼내옵니다~
		
		Part part = req.getPart("TEST1");
		System.out.println("폼태그명 : " + part.getName());
		System.out.println("파일Size : " + part.getSize());
		System.out.println("Part 헤더정보들 확인 ----------");
		System.out.println(part.getHeaderNames());
		System.out.println("Part 헤더값 확인 ----------");
		System.out.println(part.getHeader("content-disposition"));
		System.out.println(part.getHeader("content-type"));
		
		//파일 업로드 하기
		File dir = new File("c:\\upload");
		if(dir.exists()==false) {
			dir.mkdirs();
		}
		//업로드
		String filename = getFilename(part);
		part.write(dir+File.separator+filename);
	}
	
	private String getFilename(Part part) {
		System.out.println("----파일이름 추출 함수로 진입----");
		String contentDisp = part.getHeader("content-disposition");
		String[] tokens = contentDisp.split(";"); 
		String filename = tokens[2];
		
		//확장자 추출하기
		int idx=filename.lastIndexOf(".");	//. 위치 찾기
		String tmp = filename.substring(idx,filename.length()-1);
		System.out.println("파일확장자 : " + tmp);
		
		//UUID
		UUID rand = UUID.randomUUID();
		//파일명_UUID.확장자
		
		//파일이름(확장자명 제외)
		filename = filename.substring(11,idx+1);
		System.out.println("Filename : "+filename);
		System.out.println("----파일이름 추출 함수 끝----");
		return filename+"_"+rand+tmp;
	}
	

}
