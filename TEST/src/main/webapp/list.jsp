<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>JSP Board</title>
</head>
<body>

<jsp:useBean id="bMgr" class="board.BoardMgr" scope="page" />
<%@page import="board.*,java.util.*" %>

<%
Vector<BoardBean> list = (Vector<BoardBean>)bMgr.getBoardList(0, 10);
%>
	
<%	
	request.setCharacterEncoding("UTF-8");
	  
    int totalRecord=0; 			// 전체레코드수
	int numPerPage=10; 		// 페이지당 레코드 수(화면에 표시될 개수 )
	int pagePerBlock=15; 		// 블럭당 페이지수 
	  
	int totalPage=0; 			// 전체 페이지 수
	int totalBlock=0;  		// 전체 블럭수 

	int nowPage=1; 			// 현재페이지
	int nowBlock=1;  			// 현재블럭
	
	int start=0; 			// 디비의 select 시작번호
	int end=10; 			// 시작번호로 부터 가져올 select 갯수
	int listSize=0; 			// 현재 읽어온 게시물의 수
	
	if(request.getParameter("nowPage")!=null){
		nowPage=Integer.parseInt(request.getParameter("nowPage"));
	}
	
	BoardMgr boardmgr = new BoardMgr();
	
	int totalRecode = (int)boardmgr.getTotalCount();
	totalPage = (int)Math.ceil((double)totalRecode / numPerPage);
	totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);
	nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock);
	
%>



<script type="text/javascript">	
	function pageing(page) {
		document.readFrm.nowPage.value=page;
		var numPerPage=<%=numPerPage %>
		document.readFrm.start.value=(page*numPerPage)-numPerPage;
		document.readFrm.end.value=numPerPage;
		var start = document.readFrm.start.value;
		var end = document.readFrm.end.value;
		list = bMgr.getBoardList(start,end)
		document.readFrm.action="list.jsp";
		document.readFrm.submit();
	}
	function block(value){
		var numPerPage=<%=numPerPage %>
		var pagePerBlock=<%=pagePerBlock %>
		document.readFrm.nowPage.value=pagePerBlock*(block-1)+1;
		var page = pagePerBlock*(block-1)+1;
		document.readFrm.start.value=(page*numPerPage)-numPerPage;
		document.readFrm.end.value=numPerPage;
	} 
	function list() {
		
	}
	function read(num){
		document.readFrm.num.value=num;
		document.readFrm.nowPage.value='<%=nowPage%>';
		var numPerPage=<%=numPerPage %>
		var page=<%=nowPage%>
		document.readFrm.start.value=(page*numPerPage)-numPerPage;
		document.readFrm.end.value=numPerPage;
		document.readFrm.action="read.jsp";
		document.readFrm.submit();
	}
	function moveBlock(block){
		var numPerPage=<%=numPerPage %>
		var pagePerBlock=<%=pagePerBlock %>
		document.readFrm.nowPage.value=pagePerBlock*(block-1)+1;
		var page = pagePerBlock*(block-1)+1;
		document.readFrm.start.value=(page*numPerPage)-numPerPage;
		document.readFrm.end.value=numPerPage;
		document.readFrm.action="list.jsp";
		document.readFrm.submit();
	}
	 
</script>



<%
	int pageStart=(nowBlock-1)*pagePerBlock+1;
	int pageEnd=((pageStart+pagePerBlock)<=totalPage)?(pageStart+pagePerBlock):totalPage+1;
%>

<div align="center">
	<br/>
	<h2>JSPBoard</h2>
	<br/>
	
	<!-- 본문테이블  -->
	<table align="center" width="1000" cellpadding="3">
		<tr>
			<td>
				Total : <%= totalPage %>(<span style="color:red"><%=nowPage %>/<%= totalPage %></span>)
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2">
				
				  <table width="100%" cellpadding="2" cellspacing="0">
				    <tr align="center" bgcolor="#D0D0D0" height="120%">
						<td>번 호</td>
						<td>제 목</td>
						<td>이 름</td>
						<td>날 짜</td>
						<td>조회수</td>
					</tr>
					<%for(int i=0; i<list.size();i++){ %>
					<tr align="center" height="120%">
						<td><%=list.get(i).getNum() %></td>
						<td><a href="javascript:read('<%=list.get(i).getNum()%>')"><%=list.get(i).getSubject() %></a></td>
						<td><%=list.get(i).getName() %></td>
						<td><%=list.get(i).getRegdate() %></td>
						<td><%=list.get(i).getCount() %></td>
					</tr>
					<%} %>
				</table> 
			</td>
		</tr>

		<tr>
			<td colspan="2"><br /><br /></td>
		</tr>
		<tr>
			<% if(totalPage!=0){ %>
				<td>
					<%if(nowBlock>1){ %>
						<a href="javascript:moveBlock('<%=nowBlock-1 %>')">[이전으로]</a>
    		<%} %>
    			
    		<%for(int i=pageStart;i<pageEnd;i++){ %>
    			<a href="javascript:pageing('<%=i%>')">[<%=i %>]</a>
    		<%} %>
    		
    		<%if(totalBlock>=nowBlock){ %>
      			<a href="javascript:moveBlock('<%=nowBlock+1 %>')">[다음으로]</a>
      		<%} %>
  			  
		</td>
		<%} %>
			<td align="right">
					<a href="post.jsp">[글쓰기]</a> 
					<a href="javascript:list()">[처음으로]</a>
			</td>
		</tr>
	</table>
	
	<form name="readFrm" method="get">
		<input type="hidden" name="num"> 
		<input type="hidden" name="nowPage" value="<%=nowPage%>"> 
		<input type="hidden" name="start">
		<input type="hidden" name="end">
	</form>
	
	<form name="listFrm" method="post">
		<input type="hidden" name="reload" value="true"> 
		<input type="hidden" name="nowPage" value="1">
	</form>	
	
</div>	
</body>
</html>