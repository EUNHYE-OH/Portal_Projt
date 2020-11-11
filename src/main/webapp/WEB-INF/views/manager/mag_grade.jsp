<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/manager/mag_grade.css">
<link rel="stylesheet" href="resources/css/layout/layout.css">
</head>
<body>
  <span>성적입력</span>
    <div id="info">
      <form action="">
        <label for="year">학년도 <span>*</span> </label>
        <input type="number" name="year" value="2020" >
      <label for="semester">학기 <span>*</span> </label>
      <select id="semester" name="semester">
        <option value="1semester">1학기</option>
        <option value="summer_va">하계계절학기</option>
        <option value="2semester">2학기</option>
        <option value="winter_va">동계계절학기</option>
    </select>
    학번/성명 <input type="text" id="studentId"><input type="text" id="name">
    <input type="image" src="resources/image/SearchButton.jpg" id="search">
  </form>
  </div>
    <form id="contents">
        <div>
            <img src="resources/image/hamberger.jpg" alt="" class="hamberger">
            수강신청내역 [총 ?? 건]
          <input type="submit" value="저장" id="updateBtn">
        </div>
        <div>
            <table>
                <tr>
                    <td>NO</td>
                    <td>교과목명</td>
                    <td>학점</td>
                    <td>이수구분</td>
                    <td>담당교수</td>
                    <td>성적</td>

                </tr>
                <tr>
                    <td>??</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                      <select id="grade" name="grade">성적
                        <option value="AA">A+</option>
                        <option value="A">A</option>
                        <option value="BB">B+</option>
                        <option value="B">B</option>
                        <option value="CC">C+</option>
                        <option value="C">C</option>
                        <option value="DD">D+</option>
                        <option value="D">D</option>
                        <option value="F">F</option>
                      </select>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>