<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
  	<%@ include file="../../include/bs.jsp" %>
  	<style>
  	.displaynone {
    display: none;
}
body, code {
    font: 11px 'Open Sans','Lato',arial,"맑은 고딕",'Malgun Gothic',나눔고딕,'Nanum Gothic',"돋움",Dutum,san-serif;
    color: #555;
    background: #fff;
}
img, fieldset {
    border: none;
    vertical-align: top;
}
li {
    list-style: none;
    
}
fieldset {
    display: block;
    margin-inline-start: 2px;
    margin-inline-end: 2px;
    padding-block-start: 0.35em;
    padding-inline-start: 0.75em;
    padding-inline-end: 0.75em;
    padding-block-end: 0.625em;
    min-inline-size: min-content;
    border-width: 2px;
    border-style: groove;
    border-color: threedface;
    border-image: initial;
}
  	.login {
    border: 1px solid #d7d5d5;
    margin: 0 0 3px 0;
    padding: 30px 0;
    color: #2e2e2e;
}
h3 {
    margin: 0 0 20px 0;
    text-align: center;
}
fieldset {
    position: relative;
    width: 380px;
    margin: 0 auto;
}
legend {
    visibility: hidden;
    position: absolute;
    left: -9999px;
    top: -9999px;
    width: 0;
    height: 0;
    line-height: 0;
}
.login fieldset {
    position: relative;
    width: 380px;
    margin: 0 auto;
}

.login fieldset .id, .login fieldset .password {
    overflow: hidden;
    display: block;
    width: 263px;
    margin: 0 0 2px;
    border: 1px solid #d9d9d9;
    border-radius: 2px;
    color: #8F8F91;
}
.login fieldset input[type=text], .login fieldset input[type=password] {
    width: 95%;
    height: 28px;
    line-height: 28px;
    padding: 2px 2px 2px 3px;
    border: 0 none;
    color: #8F8F91;
}
.login fieldset .security {
    padding: 0 0 0 5px;
    margin: 10px 0;
    color: #757575;
}
.login fieldset .security img {
    vertical-align: middle;
}
.login fieldset > a {
    position: absolute;
    top: 0;
    right: 7px;
}
.login fieldset ul {
    overflow: hidden;
    padding: 8px 5px 5px;
    margin: 0;
    border: 0;
}
.login fieldset li {
    float: left;
    padding: 0 9px 0 13px;
    background: url(//img.echosting.cafe24.com/skin/base/common/ico_circle_arrow2.png) no-repeat 0 2px;
}
.login fieldset .snsArea {
    width: 100%;
    padding: 24px 0 0;
    text-align: center;
}
.login fieldset .snsArea li {
    float: none;
    display: inline-block;
    padding: 0;
    vertical-align: top;
    background: none;
}
.login fieldset li a {
    color: #2e2e2e;
    text-decoration: none;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.login fieldset .link {
    position: relative;
    margin: 25px 5px 0;
    padding: 25px 0 0 10px;
    color: #757575;
    border-top: 1px solid #e9e9e9;
    background: url(//img.echosting.cafe24.com/skin/base/common/ico_arrow.png) no-repeat 0 29px;
}
.login fieldset .link a {
    position: absolute;
    top: 25px;
    right: 0;
}
a {
    text-decoration: none;
    color: #555;
}
.login fieldset .link {
    position: relative;
    margin: 25px 5px 0;
    padding: 25px 0 0 10px;
    color: #757575;
    border-top: 1px solid #e9e9e9;
    background: url(//img.echosting.cafe24.com/skin/base/common/ico_arrow.png) no-repeat 0 29px;
}
.login fieldset #noMemberWrap {
    border-top: 0;
    margin-top: 0;
}
  	</style>
</head>
<body>
	<div class="jumbotron text-center">
	<%@ include file="../../include/header.jsp" %>
	<%@ include file="../../include/nav.jsp" %>
    </div>
	<div class="container">
		<div class="login">
        <h3><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/h3_login.gif" alt="회원로그인"/></h3>
        <fieldset>
<legend>회원로그인</legend>
            <label class="id ePlaceholder" title="아이디"><input id="member_id" name="member_id" fw-filter="isFill" fw-label="아이디" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"  /></label>
            <label class="password ePlaceholder" title="비밀번호"><input id="member_passwd" name="member_passwd" fw-filter="isFill&isMin[4]&isMax[16]" fw-label="패스워드" fw-msg="" autocomplete="off" value="" type="password"  /></label>
            <p class="security">
                                <img src="//img.echosting.cafe24.com/design/skin/default/member/ico_access.gif" alt="보안접속" /> 보안접속             </p>
            <a href="#none" onclick="MemberAction.login('member_form_1648240290'); return false;"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_login.gif" alt="로그인"/></a>
            <ul>
<li><a href="/member/id/find_id.html">아이디찾기</a></li>
                <li><a href="/member/passwd/find_passwd_info.html">비밀번호찾기</a></li>
            </ul>
<ul class="snsArea">
<li class="displaynone">
                    <a href="#none" onclick=""><img src="//img.echosting.cafe24.com/design/module/member/login/3374/btn_naver_login.gif" alt="네이버 로그인"/></a>
                </li>
                <li class="">
                    <a href="#none" onclick="MemberAction.snsLogin('facebook', '%2F')"><img src="//img.echosting.cafe24.com/design/module/member/login/3374/btn_facebook_login.gif" alt="페이스북 로그인"/></a>
                </li>
                <li class="displaynone">
                    <a href="#none" onclick=""><img src="//img.echosting.cafe24.com/design/module/member/login/3374/btn_google_login_new.gif" alt="구글 로그인"/></a>
                </li>
                <li class="">
                    <a href="#none" onclick="MemberAction.snsLogin('kakao', '%2F')"><img src="//img.echosting.cafe24.com/design/module/member/login/3374/btn_kakao_login.gif" alt="카카오계정 로그인"/></a>
                </li>
                <li class="displaynone">
                    <a href="#none" onclick=""><img src="//img.echosting.cafe24.com/design/module/member/login/3374/btn_line_login.gif" alt="LINE 로그인"/></a>
                </li>
                <li class="">
                    <a href="#none" onclick="MemberAction.snsLogin('apple', '%2F')"><img src="//img.echosting.cafe24.com/design/module/member/login/3374/btn_apple_login.gif" alt="Apple 로그인"/></a>
                </li>
            </ul>
<p class="link">
                회원가입을 하시면 다양하고 특별한<br/>혜택이 준비되어 있습니다.
                <a href="/member/join.html"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_join.gif" alt="회원가입"/></a>
            </p>
            <p class="link displaynone" id="noMemberWrap">
                비회원님도 상품구매가 가능하나 다양한<br/>회원혜택에서 제외됩니다.
                <a href="" onclick=""><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_nomember.gif" alt="비회원구매"/></a>
            </p>
        </fieldset>
</div>
	</div>
	<%@ include file="../../include/footer.jsp" %>
</body>
</html>