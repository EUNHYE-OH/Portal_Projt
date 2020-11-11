<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="resources/css/reset.css">
    <link rel="stylesheet" href="resources/css/student/st_changeReq.css">
<link rel="stylesheet" href="resources/css/layout/layout.css">
</head>
<body>
    <form action="bb" method="post" id="contents">
        <div>
          <img src="resources/image/hamberger.jpg" alt="" class="hamberger">
          학적변동 신청
          <input type="submit" value="수정" id="updateBtn">
        </div>
        <div>
            <table>
                <tr>
                    <td>NO</td>
                    <td>신청구분</td>
                    <td>학년도</td>
                    <td>학기</td>
                    <td>변동일자</td>
                    <td>복학예정년도</td>
                    <td>복학예정학기</td>
                </tr>
                <tr>
                    <td>??</td>
                    <td>
                      <select id="change" name="change">
                        <option value="absence">휴학</option>
                        <option value="returning">복학</option>
                        <option value="drop">자퇴</option>
                      </select>
                    </td>
                    <td>
                      <input type="number" name="year" value="2020" >
                    </td>
                    <td>
                      <select id="semester" name="semester">
                        <option value="1semester">1학기</option>
                        <option value="summer_va">하계계절학기</option>
                        <option value="2semester">2학기</option>
                        <option value="winter_va">동계계절학기</option>
                    </select>
                    </td>
                    <td>
                      <input type="text" id="chageDate" name="chageDate" placeholder="YYYYMMDD">
                    </td>
                    <td>
                      <input type="number" name="reYear" value="2020" >
                    </td>
                    <td>
                      <select id="reSemester" name="reSemester">
                        <option value="1semester">1학기</option>
                        <option value="summer_va">하계계절학기</option>
                        <option value="2semester">2학기</option>
                        <option value="winter_va">동계계절학기</option>
                    </select>
                  </td>
                </tr>
            </table>
        </div>
    </form>
</body>

</html>