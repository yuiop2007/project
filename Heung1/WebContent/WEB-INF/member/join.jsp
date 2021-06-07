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
	width:100%;
	padding: 0 10% 0 10%;
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
		<form name="joinform" method="post" action="<%=request.getContextPath()%>/joinOk.mem">
			<h6>기본정보</h6>
			<hr />
			<table>
				<tr>
					<td class="ftd">아이디</td>
					<td colspan="3"><input type="text" name="mid" maxlength="16" required placeholder="(영문소문자/숫자, 4~16자)"></td>
				</tr>
				<tr>
					<td class="ftd">비밀번호</td>
					<td colspan="3"><input type="password" name="pwd" autocomplete="off" maxlength="16" required placeholder="(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)"></td>
				</tr>
				<tr>
					<td class="ftd">비밀번호 확인</td>
					<td colspan="3"><input type="password" name="pwdCheck" autocomplete="off" maxlength="16" required></td>
				</tr>
				<tr>
					<td class="ftd">이름</td>
					<td colspan="3"><input type="text" name="name" maxlength="30" required></td>
				</tr>
				<tr>
					<td class="ftd">주소</td>
					<td>
						<input type="text" id="sample6_postcode" name="postcode1" placeholder="우편번호" readonly="readonly" maxlength="14">
					</td>
					<td>
						<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					</td>
				</tr>
				<tr>
					<td></td>
					<td colspan="3"><input type="text" name="addr1" id="sample6_address" placeholder="주소" readonly="readonly"><br></td>
				</tr>
				<tr>
					<td></td>
					<td class="adtd" colspan="2"><input type="text" id="sample6_extraAddress" name="addr2" placeholder="기본주소" readonly="readonly"></td>
					<td><input type="text" id="sample6_detailAddress" name="addr3" placeholder="상세주소"></td>
				</tr>
				<tr>
					<td class="ftd">일반전화</td>
					<td class=tel1>
						<select name="tel[]">
					    	<option value="02">02</option>
							<option value="031">031</option>
							<option value="032">032</option>
							<option value="033">033</option>
							<option value="041">041</option>
							<option value="042">042</option>
							<option value="043">043</option>
							<option value="044">044</option>
							<option value="051">051</option>
							<option value="052">052</option>
							<option value="053">053</option>
							<option value="054">054</option>
							<option value="055">055</option>
							<option value="061">061</option>
							<option value="062">062</option>
							<option value="063">063</option>
							<option value="064">064</option>
							<option value="0502">0502</option>
							<option value="0503">0503</option>
							<option value="0504">0504</option>
							<option value="0505">0505</option>
							<option value="0506">0506</option>
							<option value="0507">0507</option>
							<option value="070">070</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
							<option value="0508">0508</option>
					    </select>
					</td>
					<td class="tel2"><input type="text" name="tel[]" maxlength="4"></td>
					<td class="tel3"><input type="text" name="tel[]" maxlength="4"></td>
				</tr>
				<tr>
					<td class="ftd">휴대전화</td>
					<td class="tel1">
						<select name="mobile[]">
					    	<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
					    </select>
					</td>
					<td class="tel2"><input type="text" name="mobile[]" maxlength="4" required></td>
					<td class="tel3"><input type="text" name="mobile[]" maxlength="4" required></td>
				</tr>
				<tr>
					<td class="ftd">이메일</td>
					<td colspan="10"><input type="email" name="email"></td>
				</tr>
			</table>
			<hr />
			<h6>추가정보</h6>
			<table>
				<tr>
					<td class="ftd">성별</td>
					<td class="radiotd" colspan="3">
						<input type=radio name="gender" value="M" checked="checked">남자&nbsp;&nbsp;&nbsp; 
						<input type=radio name="gender" value="F">여자
					</td>
				</tr>
				<tr>
					<td class="ftd">생년월일</td>
					<td class="birthtd"><input type="text" name="birth_year" maxlength="4"></td>
					<td>년</td>
					<td class="birthtd"><input type="text" name="birth_month" maxlength="2"></td>
					<td>월</td>
					<td class="birthtd"><input type="text" name="birth_day" maxlength="2"></td>
					<td>일&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td class="radiotd">
						<input type=radio name="is_solar_calendar" value="T" checked="checked">양력&nbsp;&nbsp;&nbsp; 
						<input type=radio name="is_solar_calendar" value="F">음력
					</td>
				</tr>
				<tr>
					<td class="ftd">추천인 아이디</td>
					<td colspan="10"><input type="text" name="cmid"></td>
				</tr>
			</table>
			<div class="jumbotron text-center">
				<button type="button" class="btn btn-outline-dark">회원가입취소</button>
				<button type="button" class="btn btn-dark" onclick="memberJoinAction()">회원가입</button>
			</div>
		</form>
	</div>
	<%@ include file="../../include/footer.jsp"%>
</body>
</html>