<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.nav-link{
	  color: black;
	  font-size: 18pt;
	}
	.nav-item2 > .nav-link{
	  color: black;
	  font-size: 11pt;
	}
	
	.nav-link:hover{
	  color: gray;
	}
</style>
	<nav class="nav1 navbar navbar-expand-sm bg-light justify-content-center">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link" href="#">Link</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Link</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Link</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Link</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Link</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Link</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Link</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Link</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Link</a>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="#">Link</a>
			</li>
		</ul>
	</nav>
	<nav class="nav2 navbar navbar-expand-sm bg-light justify-content-center">
		<ul class="navbar-nav">
			<li class="nav-item2">
				<a class="nav-link" href="<%=request.getContextPath()%>/member/login.sub">Login </a>
			</li>
			<li class="nav-item2">
				<a class="nav-link" href="<%=request.getContextPath()%>/member/join.sub">join </a>
			</li>
			<li class="nav-item2">
				<a class="nav-link" href="<%=request.getContextPath()%>/member/mypage.sub">Mypage </a>
			</li>
			<li class="nav-item2">
				<a class="nav-link" href="#">Notice</a>
			</li>
			<li class="nav-item2">
				<a class="nav-link" href="#">Q&A</a>
			</li>
			<li class="nav-item2">
				<a class="nav-link" href="#">Review</a>
			</li>
			<li class="nav-item2">
				<a class="nav-link" href="#">Event</a>
			</li>      
		</ul>
	</nav>