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

table, tbody {
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
.adtd{
	padding-right: 10px;
}

</style>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
</head>
<body>
	<div class="jumbotron text-center">
		<%@ include file="../../include/header.jsp"%>
		<%@ include file="../../include/nav.jsp"%>
	</div>
	<div class="container">
		<form>
			<h6>기본정보</h6>
			<hr />
			<table>
				<tr>
					<td class="ftd">아이디</td>
					<td colspan="3"><input type="text" id="mid" name="mid" required></td>
				</tr>
				<tr>
					<td class="ftd">비밀번호</td>
					<td colspan="3"><input type="password" id="pwd" name="pwd" required></td>
				</tr>
				<tr>
					<td class="ftd">비밀번호 확인</td>
					<td colspan="3"><input type="password" id="pwdOk" name="pwdOk" required></td>
				</tr>
				<tr>
					<td class="ftd">이름</td>
					<td colspan="3"><input type="text" id="name" name="name" required></td>
				</tr>
				<tr>
					<td class="ftd">주소</td>
					<td>
						<input type="text" id="sample6_postcode" placeholder="우편번호">
					</td>
					<td>
						<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					</td>
				</tr>
				<tr>
					<td></td>
					<td colspan="3"><input type="text" id="sample6_address" placeholder="주소"><br></td>
				</tr>
				<tr>
					<td></td>
					<td class="adtd" colspan="2"><input type="text" id="sample6_extraAddress" placeholder="기본주소"></td>
					<td><input type="text" id="sample6_detailAddress" placeholder="상세주소"></td>
				</tr>
				<tr>
					<td class="ftd">일반전화</td>
					<td class=tel1>
						<select id="tel1" name="tel1">
					    	<option>010</option>
					      	<option>2</option>
					      	<option>3</option>
					      	<option>4</option>
					    </select>
					</td>
					<td class="tel2"><input type="text" id="tel2" name="tel2"></td>
					<td class="tel3"><input type="text" id="tel3" name="tel3"></td>
				</tr>
				<tr>
					<td class="ftd">휴대전화</td>
					<td class="tel1">
						<select id="phone1" name="phone1">
					    	<option>010</option>
					      	<option>2</option>
					      	<option>3</option>
					      	<option>4</option>
					    </select>
					</td>
					<td class="tel2"><input type="text" id="phone2" name="phone2"></td>
					<td class="tel3"><input type="text" id="phone3" name="phone3"></td>
				</tr>
				<tr>
					<td class="ftd">이메일</td>
					<td colspan="10"><input type="email" id="email" name="email"></td>
				</tr>
			</table>
			<hr />
			<h6>추가정보</h6>
			<table>
				<tr>
					<td class="ftd">성별</td>
					<td class="radiotd" colspan="3"><input type=radio>남자&nbsp;&nbsp;&nbsp; <input type=radio>여자</td>
					
				</tr>
				<tr>
					<td class="ftd">생년월일</td>
					<td class="birthtd"><input type="text" id="year" name="year"></td>
					<td>년</td>
					<td class="birthtd"><input type="text" id="month" name="month"></td>
					<td>월</td>
					<td class="birthtd"><input type="text" id="day" name="day"></td>
					<td>일&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td class="radiotd"><input type=radio>양력&nbsp;&nbsp;&nbsp; <input type=radio>음력</td>
				</tr>
				<tr>
					<td class="ftd">추천인 아이디</td>
					<td colspan="10"><input type="text" id="mid" name="mid"></td>
				</tr>
			</table>
			<div class="jumbotron text-center">
				<button type="button" class="btn btn-outline-dark">회원가입취소</button>
				<button type="button" class="btn btn-dark">회원가입</button>
			</div>
		</form>
	</div>
	<%@ include file="../../include/footer.jsp"%>
</body>
</html>