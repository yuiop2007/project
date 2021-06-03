<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MINIM</title>
<%@ include file="../../include/bs.jsp"%>
<style>
body, code {
	font: 11px 'Open Sans', 'Lato', arial, "맑은 고딕", 'Malgun Gothic', 나눔고딕, 'Nanum Gothic', "돋움", Dutum, san-serif;
	color: #555;
	background: #fff;
}

html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td, img {
	margin: 0;
	padding: 0;
}

input[type=text], input[type=password], input[type=email], select{
	width: 100%;
	padding: 10px 20px;
	margin: 1px 0 8px 0;
	box-sizing: border-box;
	border: 3px solid #ccc;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}


input[type=text]:focus, input[type=password]:focus, input[type=email]:focus, select:focus{
	border: 3px solid #555;
}

.container {
	padding: 0 250px 0 250px;
}

table, tbody{
	width: 100%;
	text-align: center;
}

.tel1 {
	padding: 0 5px 0 0;
}

.tel2 {
	padding: 0 5px 0 5px;
}

.tel3 {
	padding: 0 0 0 5px;
}

.ftd {
	width: 100px;
}
.birthtd{
	width: 100px;
}
.fname {
	font-size: 20pt;
}
.radiotd{
	text-align: left;
	height: 47px;
	font-size: 14px;
}
h6{
	font-weight: bold;
}
.btntd{
	width: 125px;
}

</style>
</head>
<body>
	<div class="jumbotron text-center">
		<%@ include file="../../include/header.jsp"%>
		<%@ include file="../../include/nav.jsp"%>
	</div>
	<div class="container">
		<form name="loginform" method="post" action="<%=request.getContextPath()%>/loginOk.mem">
			<h6>로그인</h6>
			<hr />
			<table>
				<tr>
					<td class="ftd">아이디</td>
					<td colspan="10"><input type="text" id="mid" name="mid"></td>
				</tr>
				<tr>
					<td class="ftd">비밀번호</td>
					<td colspan="10"><input type="password" id="pwd" name="pwd"></td>
				</tr>
			</table>
			<div class="jumbotron text-center">
				<button type="button" class="btn btn-outline-dark" action="">로그인취소</button>
				<button type="button" class="btn btn-dark">로그인</button>
			</div>
		</form>
	</div>
	<%@ include file="../../include/footer.jsp"%>
</body>
</html>