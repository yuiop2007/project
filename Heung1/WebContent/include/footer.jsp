<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">
<style>
body {
	font-family: 'Signika', sans-serif;
}

.logo-footer {
	margin-bottom: 40px;
}

footer {
	color: grey;
	width: 
}

footer p, a {
	font-size: 12px;
	font-family: 'Roboto', sans-serif;
}

footer h6 {
	font-family: 'Playfair Display', serif;
	margin-bottom: 40px;
	position: relative;
}

footer h6:after {
	position: absolute;
	content: "";
	background: grey;
	width: 12%;
	height: 1px;
	left: 0;
	bottom: -20px;
}

.btn-footer {
	color: grey;
	text-decoration: none;
	border: 1px solid;
	border-radius: 43px;
	font-size: 13px;
	padding: 7px 30px;
	line-height: 47px;
}

.btn-footer:hover {
	text-decoration: none;
}

.form-footer input[type="text"] {
	border: none;
	border-radius: 16px 0 0 16px;
	outline: none;
	padding-left: 10px;
}

::placeholder {
	font-size: 10px;
	padding-left: 10px;
	font-style: italic;
}

.form-footer input[type="button"] {
	border: none;
	background: #232323;
	margin-left: -5px;
	color: #fff;
	outline: none;
	border-radius: 0 16px 16px 0;
	padding: 2px 12px;
}

.social .fa {
	color: grey;
	font-size: 22px;
	padding: 10px 15px;
	background: #3c3c3c;
}

footer ul li {
	list-style: none;
	display: block;
}

footer ul {
	padding-left: 0;
}

footer ul  li a {
	text-decoration: none;
	color: grey;
	text-decoration: none;
}

a:hover {
	text-decoration: none;
	color: #f5f5f5 !important;
}

.logo-part {
	border-right: 1px solid grey;
	height: 100%;
}
.ftcontainer{
	padding: 0 14% 0 14%;
}
h6{
	font-weight: bold;
}
</style>
</head>
<footer class="container-fluid bg-grey py-5">
	<div class="ftcontainer">
		<div class="row">
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-6 ">
						<div class="logo-part">
							<img src="<%=request.getContextPath() %>/image/logo2.png" class="w-50 logo-footer">
							<p>전화상담은 운영하지 않습니다.</p><br/>
		                    <p>MON-FRI AM 10:00 ~ PM 6:00<br/>
		                       LUNCH PM 12:00 ~ PM 01:00<br/>
		                       SAT.SUN.HOLIDAY OFF
		                    </p>
						</div>
					</div>
					<div class="col-md-6 px-4">
						<h6>About Company</h6>
						<b>COMPANY</b> : 미님<br/><b>CEO</b> : 김도흥<br/><b>ADDRESS</b> : 충청북도 청주시 흥덕구 복대동 3366 <br/>
						<b>CPO</b> : 김도흥 yuoip2007@naver.com<br/>
						<a href="#" class="btn-footer"> More Info </a><br> <a href="#" class="btn-footer"> Contact Us</a>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-6 px-4">
						<h6>Help us</h6>
						<div class="row ">
							<div class="col-md-6">
								<ul>
									<li><a href="<%=request.getContextPath()%>/main.jsp"> Home</a></li>
									<li><a href="#"> About</a></li>
									<li><a href="#"> Service</a></li>
									<li><a href="#"> Team</a></li>
									<li><a href="#"> Help</a></li>
									<li><a href="#"> Contact</a></li>
								</ul>
							</div>
							<div class="col-md-6 px-4">
								<ul>
									<li><a href="#"> Cab Faciliy</a></li>
									<li><a href="#"> Fax</a></li>
									<li><a href="#"> Terms</a></li>
									<li><a href="#"> Policy</a></li>
									<li><a href="#"> Refunds</a></li>
									<li><a href="#"> Paypal</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 ">
						<h6>Newsletter</h6>
						<div class="social">
							<a href="#"><img src="<%=request.getContextPath() %>/image/facebook.png"/></a> <a href="#"><img src="<%=request.getContextPath() %>/image/insta.png"/></a>
						</div>
						<p>That's technology limitation of LCD monitors</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>