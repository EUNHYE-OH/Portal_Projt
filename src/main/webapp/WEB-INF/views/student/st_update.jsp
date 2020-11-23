<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/student/st_header.css">
<link rel="stylesheet" href="resources/css/student/st_nav.css">
  <link rel="stylesheet" href="resources/css/student/st_update.css">
  <link rel="stylesheet" href="resources/css/layout/layout.css">
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>

   <c:if test="${message != null }">
   	<script>
   		alert('${message}');
   	</script>
   </c:if>
   
   <!-- $(function() {
		 $('.dis').attr('disabled', 'disabled');
		 $('#search').click(function(){
			$('.dis').removeAttr('disabled'); 
		 });
    });  -->

</head>

<body>

    <div>
        <span>학생메뉴>학적정보>개인정보수정</span>
       <!--  <div>
           비밀번호 확인 <input type="password" name="password" id="password">
           <input type="image" src="resources/image/SearchButton.jpg" id="search">
        </div> -->
        <div id="form_wrap">
           <p> 본인정보</p>

            <form action="st_update" method="post">
                
                <table>
                    <tr>
                        <td>이름</td>
                        <td>
                            <input type="text" name="name" id="name" value="${logName}" readonly="readonly">
                        </td>
                    </tr>
                    <tr>
                        <td>학번</td>
                        <td>
                            <input type="text" name="studentid" id="studentid" value="${logID}" readonly="readonly">
                        </td>
                    </tr>
                    <tr>
                        <td>비밀번호</td>
                        <td>
                            <input type="password" name="password" id="password">
                        </td>
                    </tr>
                    <tr>
                        <td>핸드폰</td>
                        <td>
                            <input type="text" name="phone" id="phone" value="${list.phone }" placeholder="숫자만 입력해주세요.">
                        </td>
                    </tr>
                    <tr>
                        <td>국적</td>
                        <td>
                            <input type="text" name="address" id="address">
                        </td>
                    </tr>
                    <tr>
                        <td>이메일</td>
                        <td>
                            <input type="text" name="email" id="email" >
                        </td>
                    </tr>
                </table>
                <input type="submit" value="수정" id="updateBtn" onclick = "return update()">
            </form>

        </div>
    </div>
</body></html>