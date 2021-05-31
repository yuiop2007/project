
<%@page import="java.util.List"%>
<%@page import="database.LoginVO"%>
<%@page import="database.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String mid = (String) session.getAttribute("smid");
	String name = (String) session.getAttribute("sname");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>loginMain.jsp(회원인증후 메인화면 - 전체리스트보여주기)</title>
  <%@ include file="../../include/bs.jsp" %>
  <%@ include file="../../include/sCheck.jsp" %>
    <script>
    function logDataDelete() {
    	var ans = confirm("정말 탈퇴하시겠습니까???");
    	if(ans)
    		location.href="<%=request.getContextPath()%>/LogDataDelete?mid=<%=mid%>";
    }
  </script>
  <style>
  	table, th, td {
      border: 1px solid gray;
      padding: 20px;
    }
    th {
      background-color: #ccc;
      text-align: center;
    }
  </style>
</head>
<body>
	<div class="container">
	  <p><br/></p>
	  <h2>정회원 공간방</h2>
	  <table class="table table-borderless">
	    <tr>
	      <td style="text-align:left"><font color="blue"><%=name %></font>회원님 로그인 중이십니다.</td>
	      <td style="text-align:right">
	        <a href="main.jsp?submenu=update">회원정보수정</a> |
	        <a href="javascript:logDataDelete()">회원탈퇴</a> |
	        <a href="<%=request.getContextPath()%>/Logout">로그아웃</a>
	      </td>
	    </tr>
	  </table>
	  <hr/>
	  <table class="table">
	    <tr>
	      <th>번호</th>
	      <th>아이디</th>
	      <th>비밀번호</th>
	      <th>성명</th>
	      <th>포인트</th>
	      <th>최종접속일</th>
	    </tr>
<%
      // 전체 회원리스트 가져오기
  		LoginDAO dao = new LoginDAO();
		LoginVO vo = new LoginVO();
		
		 /* 페이징 처리 변수 지정 시작 */
		  int pag = request.getParameter("pag")==null ? 1 : Integer.parseInt(request.getParameter("pag"));
		  
		  int pageSize = 2;  							// 1. 한페이지의 분량을 5건으로 정한다.
		  int totRecCnt = dao.totRecCnt(); 				// 2. 총 레코드 건수를 구한다.
		  int totPage = (totRecCnt % pageSize)==0 ? totRecCnt / pageSize : (int)(totRecCnt / pageSize) +1;  // 3. 총페이지수 구하기
		  int startIndexNo = (pag - 1) * pageSize;		// 4. 현재페이지의 시작 Index번호구하기
		  int curScrStartNo = totRecCnt - startIndexNo;	// 5. 현재 화면에 보이는 방문자 시작번호
		  /* 페이징 처리 변수 지정 끝 */
		  
		  /* 블럭페이징 처리(블록의 크기를 이용하여, '현재페이지의 블럭위치(currentBlock)'와 '마지막 블럭의 위치(lastBlock)'를 구한다.) */
		  int blockSize = 3;  // 하나의 블록 크기를 결정(현재 블록의 크기는 3)
		  int currentBlock = (pag - 1) / blockSize;  // 현재 블록의 위치
		  int lastBlock = (totPage % blockSize)==0 ? (totPage / blockSize) - 1 : totPage % blockSize;
		  /* 블럭페이징 처리끝 */

		List<LoginVO> vos = dao.logDataList(startIndexNo, pageSize);
		
		for(int i=0; i<vos.size(); i++) {
			vo = vos.get(i);
%>
		    <tr>
		      <td><%=curScrStartNo %></td>
		      <td><%=vo.getMid()%></td>
		      <td><%=vo.getPwd()%></td>
		      <td><%=vo.getName()%></td>
		      <td><%=vo.getPoint()%></td>
		      <td><%=vo.getLastdate()%></td>
		    </tr>
<%		
			curScrStartNo--;
		} 
%>
	  </table>
		<!-- 페이징처리 시작 -->
		<div class="container">
			<ul class="pagination justify-content-center">
				<% if(pag != 1) { %>
				     <li class="page-item"><a class="page-link" href="main.jsp?submenu=mypage&pag=1">1페이지</a></li>
				<% } %>
				<% if(currentBlock > 0) { %>
							<li class="page-item"><a class="page-link" href="main.jsp?submenu=mypage&pag=<%=(currentBlock-1)*blockSize+1 %>">이전블록</a></li>
				<% } %>
				<%
				   for(int i=(currentBlock*blockSize)+1; i<=(currentBlock*blockSize)+blockSize ; i++) {
				  	 if(i>totPage) break;
				  	 if(i == pag) out.println("<li class='page-item active'><a class='page-link' href='#'>"+i+"</a></li>"); 
				  	 else out.println("<li class='page-item'><a class='page-link' href='main.jsp?submenu=mypage&pag="+i+"'>"+i+"</a></li>");
				   }
				%>
				<% if(currentBlock < lastBlock) { %>
							<li class="page-item"><a class="page-link" href="main.jsp?submenu=mypage&pag=<%=(currentBlock+1)*blockSize+1%>">다음블록</a></li>
				<% } %>
				<% if(pag != totPage) { %>
				     <li class="page-item"><a class="page-link" href="main.jsp?submenu=mypage&pag=<%=totPage%>">마지막페이지</a></li>
				<% } %>
			</ul>
		</div>
		<!-- 페이징처리 끝 -->
	</div>
</body>
</html>