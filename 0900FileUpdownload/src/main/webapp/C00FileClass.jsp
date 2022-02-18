<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.io.*" %>

<% 
	File f1 = new File("c:\\TEST");
	
	//파일인지 확인
	System.out.println("is File? " + f1.isFile());
	//디렉토리 인지 확인
	System.out.println("is D? " + f1.isDirectory());
	
	//경로 존재여부 확인
	System.out.println("is exist? " + f1.exists());
	
	//경로 없을때 생성
	if(f1.exists()==false){
		f1.mkdirs();
	}
	
	//경로 확인
	System.out.println("path : " + f1.getAbsolutePath());

	//해당 폴더 내의 파일 리스트 확인(절대경로)
	File[] files =  f1.listFiles();
	for(int i=0;i<files.length;i++){
		out.println("FILE : " + files[i] + "<br>");
	}
	out.println("----------------------------- <br>");
	//해당 폴더 내의 파일 리스트 확인(파일이름만)
	String[] files2 =  f1.list();
	for(int i=0;i<files.length;i++){
		out.println("FILE : " + files2[i] + "<br>");
	}
	out.println("----------------------------- <br>");
	
	
	File[] files3 = f1.listFiles(new FilenameFilter(){	
		
		@Override
		public boolean accept(File dir, String name){	
			//return name.contains(".txt");
			//return name.startsWith("a");
			return name.endsWith("x");
		}
	});
	for(int i=0;i<files3.length;i++){
		out.println("FILE : " + files3[i] + "<br>");
	}
	
%>




</body>
</html>