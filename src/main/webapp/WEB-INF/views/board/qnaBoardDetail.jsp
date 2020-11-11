<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&ABoard Detail</title>
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="resources/css/board/qnaBoardDetail.css">
</head>
<body>
	<form action="qbdetail" method="post">
		<header>
			<h1>Q & A</h1>
		</header>
		<div id="div1">
			<table>
				<tr height="30">
					<td bgcolor="#566881"
						style="border-radius: 5px; text-align: center; color: white; 
						border: 1px solid #000033; width: 70px;">번 호</td>
					<td style="border: 1px solid #000033; border-radius: 5px;">${Detail.seq}</td>
				</tr>
				<tr height="30">
					<td bgcolor="#566881"
						style="border-radius: 5px; text-align: center; color: white; 
						border: 1px solid #000033; width: 70px;">제 목</td>
					<td style="border: 1px solid #000033; border-radius: 5px;">${Detail.title}</td>
				</tr>
				<tr height="30">
					<td bgcolor="#566881"
						style="border-radius: 5px; text-align: center; color: white; 
						border: 1px solid #000033; width: 70px;">내 용</td>
					<td><textarea rows="25" cols="60" name="contents" id="contents" 
						readonly="readonly"> ${Detail.contents}</textarea></td>
				</tr>
				<tr height="30">
					<td bgcolor="#566881"
						style="border-radius: 5px; text-align: center; color: white; 
						border: 1px solid #000033; width: 70px;">날 짜</td>
					<td style="border: 1px solid #000033; border-radius: 5px;">${Detail.regDate}</td>
				</tr>
				<tr height="30">
					<td bgcolor="#566881"
						style="border-radius: 5px; text-align: center; color: white; 
						border: 1px solid #000033; width: 70px;">조회수</td>
					<td style="border: 1px solid #000033; border-radius: 5px;">${Detail.count}</td>
				</tr>
				<tr height="30">
					<td bgcolor="#566881"
						style="border-radius: 5px; text-align: center; color: white; 
						border: 1px solid #000033; width: 70px;">작성자</td>
					<td style="border: 1px solid #000033; border-radius: 5px;">${Detail.author}</td>
				</tr>
			</table>
			<div id="com_div">
				<table style="width: 100%;">
					<tr>
						<td><textarea rows="5" cols="20" name="comment" id="comment"
							style="resize: none; font-size: 15px; overflow-y: scroll;
							width: 95%; height: 50px;"></textarea></td>
						<td style="width: 10%; border-radius: 5px; text-align: center; 
						line-height: 40px;"><input type="submit" value="댓글등록" style="margin-right: 30px;"></td>
					</tr>
				</table>
				<ul>
					<%-- <c:forEach items="${cment}" var="comment"> --%>
					<li>
						<p style="float: left; width: 20%;">
						번 호 : ${cment.cseq} </p>
						<p style="float: left; width: 40%;">
						작성자 : ${cment.cname} </p>
						<p style="float: left; width: 40%;">
						작성 날짜 : <fmt:formatDate value="${cment.cregdate}" pattern="yyyy-MM-dd" /></p><br> 
						<p style="clear: both;">
						내 용 : ${cment.ccontent}</p>
					</li>
					<%-- </c:forEach> --%>
				</ul>
			</div><hr>
		</div>
	</form>
</body>
	<footer>
		<div>
			<ul>
				<li><a href="#" class="a1">개인정보처리방침</a></li>
				<li><a href="#">이메일무단수집거부</a></li>
				<li><a href="#">오시는길</a></li>
				<li><a href="#">교내전화번호</a></li>
				<li><a href="#">학내백신다운로드</a></li>
				<ul>
					<ul>
						<li>은혜캠퍼스 충청남도 아산시 배방읍 호서로79번길20 (우)31499 TEL:041-540-5114</li>
						<li>승빈캠퍼스 충청남도 천안시 동남구 호서대길12 (우)31066 TEL:041-560-8114</li>
						<li>민혁캠퍼스 충청남도 천안시 배방읍 호서대길12 (우)31499 TEL:041-560-8115</li>
						<li>COPYRIGHT(C) 2011 HOSEO UNIVERSITY. ALL RIGHT RESERVED</li>
					</ul>
					<img src="resources/image/hoseologo1.png" width="140" height="50">
				</ul>
			</ul>
		</div>
	</footer>
</html>