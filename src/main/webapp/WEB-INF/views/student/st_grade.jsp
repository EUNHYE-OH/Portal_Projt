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
    <link rel="stylesheet" href="resources/css/student/st_grade.css">
</head>
<body>
  <span>학생메뉴>학생메뉴>성적>성적조회(전체) (UGD0250Q)</span>
    <div id="info">
      <form action="">
        학번/성명 <input type="text" id="studentId" disabled="disabled">
        <input type="text" id="name" disabled="disabled">
        <input type="image" src="resources/image/SearchButton.jpg" id="search">
      </form>
  </div>
    <div id="contents">
      <!--이수학기목록 + 성적누계-->
      <div>
      <!--이수학기목록-->
        <div>
            <img src="resources/image/hamberger.jpg" alt="" class="hamberger">
            이수학기목록 [총 ?? 건]
            <table>
                <tr>
                    <td>NO</td>
                    <td>학년</td>
                    <td>학기</td>
                    <td>신청학점</td>
                    <td>이수학점</td>
                    <td>총평점</td>
                </tr>
                <tr>
                    <td>??</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
      <!--성적누계-->
        <div>
            <img src="resources/image/hamberger.jpg" alt="" class="hamberger">
            성적누계
            <table>
                <tr>
                    <td>신청학점</td>
                    <td>이수학점</td>
                    <td>총평점</td>
                </tr>
                <tr>
                    <td>??</td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
        </div>
      <!--과목목록  수강신청내역이 나오도록하기! -->
        <div id="subjectList">
            <img src="resources/image/hamberger.jpg" alt="" class="hamberger">
             과목목록 [총 ?? 건]
            <div>수강신청 내역 나오게 하기</div>
        </div>
    </div>
</body>
</html>