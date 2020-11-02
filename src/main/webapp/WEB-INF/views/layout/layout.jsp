<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>오은대학교통합정보시스템</title>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/student/st_header.css">
  <link rel="stylesheet" href="resources/css/student/st_nav.css">
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
</head>
<body>
  <header id="header">
    <div id="logo_wrap">
    <div id="logo">
      <img src="resources/image/logo.jpg" alt="통합정보시스템">
    </div>
    <img id="globalm" src="resources/image/globalm_btn08on.jpg" alt="학생메뉴">
    </div>
    <div id="out_wrap">
    <div id="timer">
      <img src="resources/image/clock.jpg" alt="타이머">
      <span>timer</span>
    </div>
    <div id="logout">
      <span>학부생 오은혜님</span>
      <img src="resources/image/logout_icon.gif" alt="나가기">
    </div>
    </div>
  </header>
  <section>
    <nav id="nav">
      <ul>학생메뉴
              <li><span>학적정보</span>
                <ul>
                  <li class="hover_b">개인정보수정</li>
                  <li class="hover_b">학생종합정보</li>
                </ul>
              </li>
              <li>수업수강
                <ul>
                  <li class="hover_b">수강신청내역</li>
                </ul>
                </li>
              <li>성적
                <ul>
                  <li class="hover_b">성적조회</li>
                </ul>
                </li>
            </ul>
    </nav>
    <article id="article"></article>
  </section>
</body>
<script>



$('.hover_b').hover(function(){
  $(this).css({
			color:"blue",
			cursor:"pointer"
		});//css
	}, function(){
		$(this).css({
			color:"black",
			cursor:"default"
		});//css
});//hover_b

</script>
</html>