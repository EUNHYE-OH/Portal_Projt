<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Home</title>
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<script src="resources/jqLib/joinCheck.js"></script>
<link rel="stylesheet" href="resources/css/joinForm.css">
<script>
var siCheck=false; // studentId
var pwCheck=false; // password
var rwCheck=false; // repassword
var nmCheck=false; // name
var emCheck=false; // email
var naCheck=false; // nation
var adCheck=false; // adress
var phCheck=false; // phone
var biCheck=false; // birth

$(function() {
	
	$('#studentId').focus();
	
	$('#studentId').focusout(function(){
		siCheck = studentIdCheck();
	});
	
	$('#password').focusout(function(){
		pwCheck = passwordCheck();
	});
	
	$('#repassword').focusout(function(){
		rwCheck = repasswordCheck();
	});
	
	$('#name').focusout(function() {
		nmCheck = nameCheck();
	});
	
	$('#email').focusout(function() {
		emCheck = emailCheck();
	});
	
	$('#nation').focusout(function() {
		naCheck = nationCheck();
	});
	
	$('#adress').focusout(function() {
		adCheck = adressCheck();
	});
	
	$('#phone').focusout(function() {
		phCheck = phoneCheck();
	});

	$('#birth').focusout(function() {
		biCheck = birthCheck();
	});
});
</script>
</head>
<body>
	<form action="join" method="post">
		<header>
			<img src="resources/image/main.png" width=100% height=20%>
		</header>
		<div id="div1">
				<table>
				<h2>회 원 가 입</h2>
				<tr height="45">
					<td><span id="sp">학번</span>
						<input type="text" name="studentId" id="studentId" class="ibox" required="required"
						placeholder="숫자로만 입력하세요">
						<br><span id = studentIdMessage class = "errorMessage"></span></td>
				</tr>
				<tr height="45">
					<td><span id="sp">비밀번호</span> 
						<input type="password" name="password" id="password" class="ibox" required="required"
						placeholder="비밀번호를 입력하세요">
						<br><span id = passwordMessage class = "errorMessage"></span></td>
				</tr>
				<tr height="45">
					<td><span id="sp">비밀번호확인</span> 
						<input type="password" name="repassword" id="repassword" class="ibox" required="required"
						placeholder="비밀번호를 재입력하세요">
						<br><span id = repasswordMessage class = "errorMessage"></span></td>
				</tr>
				<tr height="45">
					<td><span id="sp">이름</span> 
						<input type="text" name="name" id="name" class="ibox" required="required" 
						placeholder="이름을 입력하세요">
						<br><span id = nameMessage class = "errorMessage"></span></td>
				</tr>
				<tr height="45">
					<td><span id="sp">E-mail</span>
						<input type="email" name="email" id="email" class="ibox" required="required"
						placeholder="메일주소를 입력하세요">
						<br><span id = emailMessage class = "errorMessage"></span></td>
				</tr>
				<tr height="45">
					<td><span id="sp">국적</span> 
						<input type="text" name="nation" id="nation" class="ibox" required="required"
						placeholder="국적을 입력하세요">
						<br><span id = nationMessage class = "errorMessage"></span></td>
				</tr>
				<tr height="45">
					<td><span id="sp">주소</span> 
						<input type="text" name="adress" id="adress" class="ibox" required="required"
						placeholder="주소를 입력하세요">
						<br><span id = adressMessage class = "errorMessage"></span></td>
				</tr>
				<tr height="45">
					<td><span id="sp">연락처</span> 
						<input type="tel" name="phone" id="phone" class="ibox" required="required"
						placeholder="숫자로만 입력하세요">
						<br><span id = phoneMessage class = "errorMessage"></span></td>
				</tr>
				<tr height="45">
					<td><span id="sp">생년월일</span> 
						<input type="date" name="birth" id="birth" class="ibox">
						<br><span id = birthMessage class = "errorMessage"></span></td>
				</tr>
				<tr height="45">
					<td><span id="sp">성별</span>
						<input type="radio" name="gender" value="male" id="gender"><span id="sp1">남</span>
						<input type="radio" name="gender" value="female"><span id="sp1">여</span></td>
				</tr><br>
				<tr height="45">
					<td>
						<input type="submit" value="완료" id="sub">&nbsp;&nbsp;&nbsp; 
						<input type="reset" value="취소" id="res"></td>
				</tr>
			</table>
		</div>
		<footer>
			<div>
				<ul>
					<li><a href="#" class="a1">개인정보처리방침</a></li>
					<li><a href="#">이메일무단수집거부</a></li>
					<li><a href="#">오시는길</a></li>
					<li><a href="#">교내전화번호</a></li>
					<li><a href="#">학내백신다운로드</a></li>
					<ul>
						<img src="resources/image/hoseologo6.png">
						<ul>
							<li>은혜캠퍼스 충청남도 아산시 배방읍 호서로79번길20 (우)31499 TEL:041-540-5114</li>
							<li>승빈캠퍼스 충청남도 천안시 동남구 호서대길12 (우)31066 TEL:041-560-8114</li>
							<li>민혁캠퍼스 충청남도 천안시 배방읍 호서대길12 (우)31499 TEL:041-560-8115</li>
							<li>COPYRIGHT(C) 2011 HOSEO UNIVERSITY. ALL RIGHT RESERVED</li>
						</ul>
					</ul>
				</ul>
			</div>
		</footer>
	</form>
</body>
</html>