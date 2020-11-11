<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>오은대학교통합정보시스템</title>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/manager/mag_header.css">
  <link rel="stylesheet" href="resources/css/manager/mag_nav.css">
  <link rel="stylesheet" href="resources/css/layout/layout.css">
  <script src="resources/jqLib/jquery-3.2.1.min.js"></script>
</head>
<body>
  <header id="header">
    <div id="logo_wrap">
    <div id="logo">
      <img src="resources/image/logo.jpg" alt="통합정보시스템">
    </div>
    <div>
    <img id="globalm" src="resources/image/manage_btn08on.png" alt="관리자메뉴">
    
    </div>
    </div>
    <div id="out_wrap">
    <div id="timer">
      <img src="resources/image/clock.jpg" alt="타이머">
      <span>timer</span>
    </div>
    <div id="logout">
      <span>${logName}</span>
      <img src="resources/image/logout_icon.gif" alt="나가기">
    </div>
    </div>
  </header>
  <section>
    <nav id="nav">
      <ul>관리자메뉴
              <li><span>학생정보</span>
                <ul>
                  <li class="hover_b" id="insert">입학정보입력</li>
                  <li class="hover_b" id="update">학생정보수정</li>
                  <li class="hover_b" id="mag_grade">성적입력</li>
                </ul>
              </li>
              <li>학적변동
                <ul>
                  <li class="hover_b" id="change">학적변동 승인</li>
                </ul>
                </li>
              <li>졸업요건
                <ul>
                <!-- 아직 view 안만들었음 -->
                  <li class="hover_b" id="grade">졸업승인</li>
                </ul>
                </li>
            </ul>
    </nav>
    <article id="article"></article>
  </section>
</body>
<script>
$(function() {
	$('#insert').click(function() {
		$.ajax({
			type : 'POST',
			url : 'mag_newInsert',
			success : function(result) {
				$('#article').html(result);
			},
			error : function() {
				alert('서버에러(mag_newInsert)');
			}
		}); //ajax
	});//----------------------------------------------update
	$('#update').click(function() {
		$.ajax({
			type : 'POST',
			url : 'mag_infoBasicUp',
			success : function(result) {
				$('#article').html(result);
			},
			error : function() {
				alert('서버에러(mag_infoBasic)');
			}
		}); //ajax
	});//----------------------------------------------update
	
	$('#mag_grade').click(function() {
		$.ajax({
			type : 'Get',
			url : 'mag_grade',
			success : function(result) {
				$('#article').html(result);
			},
			error : function() {
				alert('서버에러(mag_grade)');
			}
		}); //ajax
	});//----------------------------------------------grade
	
	$('#change').click(function() {
		$.ajax({
			type : 'Get',
			url : 'mag_changeConfirm',
			success : function(result) {
				$('#article').html(result);
			},
			error : function() {
				alert('서버에러(mag_changeConfirm)');
			}
		}); //ajax
	});//----------------------------------------------changeConfirm

   // 졸업승인에 대한 ajax가 와야함
	$('#grade').click(function() {
		$.ajax({
			type : 'Get',
			url : 'st_grade',
			success : function(result) {
				$('#article').html(result);
			},
			error : function() {
				alert('서버에러(st_grade)');
			}
		}); //ajax
	});//----------------------------------------------st_grade
	
});//---------------------ready


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