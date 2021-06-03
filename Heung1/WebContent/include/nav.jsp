<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td, img {
    margin: 0;
    padding: 0;
	}
	.nav1 > ul > li{
		margin: 0px 7px 0px 7px;
	}
	.nav-link{
	  color: black;
	  font-size: 15pt;
	}
	.nav-item2 > .nav-link{
	  color: black;
	  font-size: 11pt;
	}
	
	.nav-link:hover{
	  color: gray;
	}
	.bg-light {
	  background-color: #fff!important;
	}
	.nav1{
		opacity: 0.8;
	}
</style>
<script>
$(document).ready(function () {
    var menu = $('.nav1');
    var origOffsetY = menu.offset().top;

    function scroll() {
        if ($(window).scrollTop() >= origOffsetY) {
            $(menu).addClass('fixed-top');
        } else {
            $(menu).removeClass('fixed-top');
        }
    }
    document.onscroll = scroll;
});
</script>
	<nav class="nav1 navbar navbar-expand-sm bg-light justify-content-center">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link" href="#">ALL</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">NEW</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">MADE</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">OUTER</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">TOP</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">BOTTOM</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">ACC</a>
			</li>
		</ul>
	</nav>
	<nav class="nav2 navbar navbar-expand-sm bg-light justify-content-center">
		<ul class="navbar-nav">
			<li class="nav-item2">
				<a class="nav-link" href="<%=request.getContextPath()%>/member/login.mem">Login </a>
			</li>
			<li class="nav-item2">
				<a class="nav-link" href="<%=request.getContextPath()%>/member/join.mem">join </a>
			</li>
			<li class="nav-item2">
				<a class="nav-link" href="<%=request.getContextPath()%>/member/mypage.mem">Mypage </a>
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