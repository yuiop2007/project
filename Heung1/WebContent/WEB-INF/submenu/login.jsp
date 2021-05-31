<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>login.jsp(회원인증창)</title>
    <%@ include file="../../include/bs.jsp" %>
  <script>
    function fCheck() {
    	// 체크........
    	
    	myform.submit();
    }
  </script>
</head>
<body>
	<div class="modal-dialog">
	  <div class="modal-content">
	  <div class="container" style="padding:30px">
	    <h2>로그인</h2>
	    <form method="post" class="was-validated" action="<%=request.getContextPath()%>/loginOk.mem">
	      <div class="form-group">
	        <label for="mid">회원 아이디 :</label>
	        <input type="text" class="form-control" name="mid" id="mid" placeholder="회원 아이디를 입력하세요" required autofocus/>
	        <div class="valid-feedback">정확한 아이디를 입력하세요.</div>
	        <div class="invalid-feedback">회원 아이디는 필수 입력사항입니다.</div>
	      </div>
	      <div class="form-group">
	        <label for="pwd">비밀번호 :</label>
	        <input type="password" class="form-control" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요" maxlength="9" required/>
	        <div class="valid-feedback">정확한 비밀번호를 입력하세요.</div>
	        <div class="invalid-feedback">비밀번호는 필수 입력사항입니다.</div>
	      </div>
	      
	      <button type="submit" class="btn btn-secondary">로그인</button>&nbsp;
	      <button type="reset" class="btn btn-secondary">취소</button>&nbsp;
	    </form>
	  </div>
	  
	  </div>
	</div>
</body>
</html>