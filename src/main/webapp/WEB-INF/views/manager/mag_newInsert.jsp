<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/manager/mag_newInsert.css">
<link rel="stylesheet" href="resources/css/layout/layout.css">
    <meta charset="UTF-8">
    <title>Document</title>
</head>

<body>  
   <div id="info">
   학번/성명 <input type="text" id="studentid"><input type="text" id="name">
   <input type="image" src="resources/image/SearchButton.jpg" id="search">
 </div>
 <form action="" method="post">
       <input type="submit" value="저장">
     <div id="basic1">
         <div><img src="resources/image/hamberger.jpg" class="hamberger">
             기본정보</div>
         <div>
             <table>
                 <tr>
                     <td><span>성명</span></td>
                     <td><input type="text"></td>
                     <td>생년월일</td>
                     <td><input type="text"></td>

                     <td>성 별</td>
                     <td>
                         남자 <input type="radio">
                         여자 <input type="radio">
                     </td>
                 </tr>
             </table>
         </div>
     </div>
     <div id="basic2">
         <div>
             <img src="resources/image/hamberger.jpg" class="hamberger">
             입학정보
         </div>
         <div>
             <table>
                 <tr>
                     <td>입학년도 </td>
                     <td><input type="text"></td>
                     <td>입학학기 </td>
                     <td><input type="text"></td>
                 </tr>
                 <tr>
                     <td>입학학부 </td>
                     <td><input type="text"></td>
                     <td>입학전공 </td>
                     <td><input type="text"></td>
                 </tr>
             </table>
         </div>
     </div>
 </form>
</body>

</html>