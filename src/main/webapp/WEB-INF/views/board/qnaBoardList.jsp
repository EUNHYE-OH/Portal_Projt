<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/board/qboardList.css">

<script>
$(function(){
	$('#searchBtn').on('click', function(){
		self.location = "pqblist"
			+"${pageVO.makeQuery(1)}"
			+"&searchType="
			+$('#searchType').val()
			+"&keyword="
			+$('#keyword').val();
	});
});
</script>

</head>

<body>
	<div>
		<header>
			<div>
				<img src="resources/image/hoseologo2.png">
			</div>
		</header>
		<main>
		<div id="searchDiv">
			<div>
				<input type="button" value="글쓰기" onclick="location.href='qbinsertf'">
			</div>
			<div>
				<select id="searchType">
					<option value="n" <c:out value="${pageVO.searchType==null ? 'selected' : '' }" />>
					검색</option>
					<option value="t" <c:out value="${pageVO.searchType eq 't' ? 'selected' : '' }" />>
					제목</option>
					<option value="c" <c:out value="${pageVO.searchType eq 'c' ? 'selected' : '' }" />>
					내용</option>
					<option value="w" <c:out value="${pageVO.searchType eq 'w' ? 'selected' : '' }" />>
					작성자</option>
				</select>
				<input type="text" id="keyword" value="${pageVO.keyword}"> 
				<input type="button" value="검색" id="searchBtn">
			</div>
		</div>
		<div id="tableDiv">
			<table>
				<tr>
					<td>번 호</td>
					<td id="title">제 목</td>
					<td>작성일</td>
					<td>조회수</td>
					<td>작성자</td>
				</tr>
				<c:forEach items="${qblist}" var="qb">
					<tr>
						<td>${qb.seq}</td>
						<td>
							<a href="qbdetail?seq=${qb.seq}&studentId=${qb.studentId}">${qb.title}</a>
						</td>
						<td>${qb.regDate}</td>
						<td>${qb.count}</td>
						<td>${qb.studentId}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div id="pagingDiv">
			<div>
				<c:choose>
					<c:when test="${startPageNo>listPageNo}">
					<a href="pqblist?viewPage=1">&lt;&lt;</a>&nbsp;&nbsp;
					<a href="pqblist?viewPage=${startPageNo-1}">&lt;</a>&nbsp;&nbsp;
					</c:when>
					<c:otherwise>
						<font size="4" color="#566881">&lt;&lt;&nbsp;&nbsp;&lt;&nbsp;&nbsp;</font>
					</c:otherwise>
				</c:choose>
				
				<c:forEach var="p" begin="${startPageNo}" end="${endPageNo}">
					<c:if test="${p==viewPage}">
					<font size="7" color="#566881">${p}&nbsp;</font>
					</c:if>
					<c:if test="${p!=viewPage}">
					<a href="pqblist?viewPage=${p}">${p}</a>&nbsp;
					</c:if>
				</c:forEach>
				
				<c:choose>
					<c:when test="${endPageNo<totalPageNo}">
					<a href="pqblist?viewPage=${endPageNo+1}">&nbsp;&nbsp;&gt;</a>
					<a href="pqblist?viewPage=${totalPageNo}">&nbsp;&nbsp;&gt;&gt;</a>
					</c:when>
					<c:otherwise>
						<font size="4" color="#566881">&nbsp;&nbsp;&gt;&nbsp;&nbsp;&gt;&gt;</font>
					</c:otherwise>
				</c:choose>
			</div>

		</div>
		</main>
		<footer>
			<img src="resources/image/hoseologo1.png" width="140" height="50">

			<div>
				<ul>
					<li><span>은혜캠퍼스</span> 충청남도 아산시 배방읍 호서로79번길20 (우)31499 TEL:041-540-5114</li>
					<li><span>승빈캠퍼스</span> 충청남도 천안시 동남구 호서대길12 (우)31066 TEL:041-560-8114</li>
					<li><span>민혁캠퍼스</span> 충청남도 천안시 배방읍 호서대길12 (우)31499 TEL:041-560-8115</li>
				</ul>
				<span>COPYRIGHT(C) 2011 HOSEO UNIVERSITY. ALL RIGHT RESERVED</span>
			</div>

			<div>
				<ul>
					<li><a href="#" class="a1">개인정보처리방침</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href="#">교내전화번호</a></li>
					<li><a href="#">이메일무단수집거부</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">학내백신다운로드</a></li>
					<li><a href="#">오시는길</a></li>
				</ul>
			</div>
		</footer>
	</div>
</body>



</html>