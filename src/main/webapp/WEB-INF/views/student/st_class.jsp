<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
  <link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/layout/layout.css">
    <link rel="stylesheet" href="resources/css/student/st_class.css">
</head>


<body>
   <span>학생메뉴>학생메뉴>수업수강>수강신청</span>
      <form action="st_class" method="get">
    <div id="info">
        <label for="year">학년도 <span>*</span> </label>
        <input type="number" name="appYear" value="2020" >
      <label for="semester">학기 <span>*</span> </label>
      <select id="semester" name="appSemester">
        <option value="1semester">1학기</option>
        <option value="summer_va">하계계절학기</option>
        <option value="2semester">2학기</option>
        <option value="winter_va">동계계절학기</option>
    </select>
     학번/성명 <input type="text" name="studentid" id="studentid" value="${logID}" readonly="readonly">
     <input type="text" name="name" id="name" value="${logName}" readonly="readonly">
  </div>
    <div id="contents">
        <div>
            <img src="resources/image/hamberger.jpg" alt="" class="hamberger">
            수강신청
            <input type="submit" value="저장" >
        </div>
  <!--       <div id="searchBar">
       		<select name="searchType" id="searchType">
       		<option value="s">
       		</option>
       		</select>
        </div> -->
          <table>
              <tr>
                  <td>NO</td>
                  <td>과목명</td>
                  <td>학점</td>
                  <td>이수구분</td>
                  <td>담당교수</td>
                  <td>선택</td>
              </tr>
               <c:forEach var="sbjList" items="${sbjList}" varStatus="status">
              <tr>
                  <td>${status.count}</td>
                  <td>${sbjList.subjectid}</td>
                  <td>${sbjList.subCredit}</td>
                  <td>${sbjList.classifi}</td>
                  <td>${sbjList.professor}</td>
                  <td><input type="checkbox" name="subjectid" id="checked" value="${sbjList.subjectid}"></td>
              </tr>
              </c:forEach>
          </table>
        </div>
   </form>
</body>

</html>
