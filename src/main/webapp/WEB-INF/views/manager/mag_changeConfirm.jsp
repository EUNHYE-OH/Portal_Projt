<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/manager/mag_changeConfirm.css">
<link rel="stylesheet" href="resources/css/layout/layout.css">
</head>
<body> 
  <span>학적변동승인</span>
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
    <div id="contents">
        <div>
            <img src="resources/image/hamberger.jpg" alt="" class="hamberger">
            학적변동 목록 [총 ?? 건]
          <input type="submit" value="저장">
        </div>
        <form>
            <table>
                <tr>
                    <td>NO</td>
                    <td>학년도</td>
                    <td>학기</td>
                    <td>변동일자</td>
                    <td>복학예정년도</td>
                    <td>복학예정학기</td>
                    <td>승인여부</td>
                </tr>
                <tr>
                    <td>??</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                      <input type="checkbox" value="confirm">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>

</html>
