<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/student/st_header.css">
<link rel="stylesheet" href="resources/css/student/st_nav.css">
<link rel="stylesheet" href="resources/css/layout/layout.css">
    <link rel="stylesheet" href="resources/css/student/st_classList.css">
</head>
<script>
	$(function(){
		$('#search').click(function(){
			
		});//search_click
	});//ready
</script>
<body>
  <span>학생메뉴>학생메뉴>수업수강>수강내역신청 (UCR0123Q)</span>
    <div id="info">
      <form action="">
        <label for="year">학년도 <span>*</span> </label>
        <input type="number" name="year" id="year" value="${y}">
      <label for="semester">학기 <span>*</span> </label>
      <select id="semester" name="semester">
        <option value="1semester">1학기</option>
        <option value="summer_va">하계계절학기</option>
        <option value="2semester">2학기</option>
        <option value="winter_va">동계계절학기</option>
    </select>
    학번/성명 <input type="text" name="studentid" value="${logID}" readonly="readonly">
    <input type="text" name="name" value="${logName}" readonly="readonly">
    <input type="image" src="resources/image/SearchButton.jpg" id="search">
  </form>
  </div>
    <div id="contents">
        <div>
            <img src="resources/image/hamberger.jpg" alt="" class="hamberger">
            수강신청내역 [총 ?? 건]
        </div>
        <div>
            <table>
                <tr>
                    <td>NO</td>
                    <td>교과목명</td>
                    <td>학점</td>
                    <td>이수구분</td>
                    <td>담당교수</td>
                </tr>
                <c:if test="${clList != null }">
                <tr>
                    <td>${status.count}</td>
                    <td>${clList.subjectid}</td>
                    <td>${clList.subCredit}</td>
                    <td>${clList.classifi}</td>
                    <td>${clList.professor}</td>
                </tr>
                </c:if>
                <!--이것만 밑으로 어떻게 보낼까?-->
                <tr>
                    <td>합계</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>