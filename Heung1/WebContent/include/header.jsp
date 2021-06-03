<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<style>
html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td, img {
	margin: 0;
	padding: 0;
}

header {
	margin: 20px 0px 20px 0px;
	height: 80px;
	display: block;
}

#hname>a {
	color: black;
	font-size: 30pt;
}

#hname>a:hover {
	text-decoration: none;
}

.logo {
	width: 200px;
}
.jumbotron {
    background-color: #fff;
}
</style>
</head>
<header id="hname">
	<a href="<%=request.getContextPath()%>/main.jsp"><img src="<%=request.getContextPath() %>/image/logo1.png" class="logo"></a>
</header>


