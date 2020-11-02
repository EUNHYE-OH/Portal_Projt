<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoticeBoard List</title>
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="resources/css/noticeBoardList.css">
</head>
<body>
	<form acrtion="nblist" method="post">
		<header>
			<img src="resources/image/hoseo10.png" width="100%" height="200px">
		</header>
		<h2>공 지 사 항</h2>
			<!-- admin 활성화되면 아래 주석 해제 -->
			<%-- <c:if test="${logID=='admin'}"> --%>
			<a href="nbinsert" id="nb_btn">공지등록</a><br>
			<%-- </c:if> --%>
		<div id="div1">
			<table width=95%
				style="text-align: center; border: 2px solid #566881; margin: 0 auto;">
				<tr height="40">
					<td style="border: 1px solid #566881; width: 5%; background-color: #566881; color: white;">
					번호</td>
					<td style="border: 1px solid #566881; width: 30%; background-color: #566881; color: white;">
					제목</td>
					<td style="border: 1px solid #566881; width: 35%; background-color: #566881; color: white;">
					내용</td>
					<td style="border: 1px solid #566881; width: 10%; background-color: #566881; color: white;">
					작성자</td>
					<td style="border: 1px solid #566881; width: 15%; background-color: #566881; color: white;">
					등록일자</td>
					<td style="border: 1px solid #566881; width: 5%; background-color: #566881; color: white;">
					조회수</td>
				</tr>
				<!-- controller 및 data값입력되면 아래 주석 풀어서 적용할것 -->
				<%-- <c:forEach var="nb" items="${nlist}"> --%>
				<tr align="center" height="30">
					<td style="border: 1px solid #566881;">${nb.seq}</td>
					<td style="border: 1px solid #566881;">${nb.title}</td>
					<td style="border: 1px solid #566881;">${nb.contents}</td>
					<td style="border: 1px solid #566881;">${nb.author}</td>
					<td style="border: 1px solid #566881;">${nb.regDate}</td>
					<td style="border: 1px solid #566881;">${nb.count}</td>
				</tr>
				<%-- </c:forEach> --%>
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
	</form>
</body>
</html>