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
<link rel="stylesheet" href="resources/css/layout/layout.css">
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
</head>
<body>
	<header id="header">
		<div id="logo_wrap">
			<div id="logo">
				<img src="resources/image/logo.jpg" alt="통합정보시스템">
			</div>
			<img id="globalm" src="resources/image/globalm_btn08on.jpg"
				alt="학생메뉴">
		</div>
		<div id="out_wrap">
			<div id="timer">
				<img src="resources/image/clock.jpg" alt="타이머"> <span>timer</span>
			</div>
			<div id="logout">
				<span>학부생 ${logName}</span> <img src="resources/image/logout_icon.gif"
					alt="나가기">
			</div>
		</div>
	</header>
	<section>
		<nav id="nav">
			<ul>
				학생메뉴
				<li><span>학적정보</span>
					<ul>
						<li class="hover_b" id="update">개인정보수정</li>
						<li class="hover_b" id="infomation">학생종합정보</li>
						<li class="hover_b" id="changeReq">학적변동신청</li>
					</ul></li>
				<li>수업수강
					<ul>
						<li class="hover_b" id="class">수강신청</li>
						<li class="hover_b" id="classList">수강신청내역</li>
					</ul>
				</li>
				<li>성적
					<ul>
						<li class="hover_b" id="grade">성적조회</li>
					</ul>
				</li>
			</ul>
		</nav>
		<article id="article">
		</article>
	</section>
</body>
<script>
	$(function() {
		$('#update').click(function() {
			$.ajax({
				type : 'post',
				url : 'st_updatef',
				success : function(result) {
					$('#article').html(result);
				},
				error : function() {
					alert('서버에러(st_update)');
				}
			}); //ajax
		});//----------------------------------------------update
		
		$('#infomation').click(function() {
			$.ajax({
				type : 'Get',
				url : 'st_infoMain',
				success : function(result) {
					$('#article').html(result);
				},
				error : function() {
					alert('서버에러(st_infoMain)');
				}
			}); //ajax
		});//----------------------------------------------main

		$('#class').click(function() {
			$.ajax({
				type : 'post',
				url : 'st_classf',
				success : function(result) {
					$('#article').html(result);
				},
				error : function() {
					alert('서버에러(st_class)');
				}
			}); //ajax
		});//----------------------------------------------st_classList
		$('#classList').click(function() {
			$.ajax({
				type : 'post',
				url : 'st_classList',
				success : function(result) {
					$('#article').html(result);
				},
				error : function() {
					alert('서버에러(st_classList)');
				}
			}); //ajax
		});//----------------------------------------------st_classList

		$('#changeReq').click(function() {
			$.ajax({
				type : 'Get',
				url : 'st_changeReq',
				success : function(result) {
					$('#article').html(result);
				},
				error : function() {
					alert('서버에러(st_changeReq)');
				}
			}); //ajax
		});//----------------------------------------------changeReq
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

	$('.hover_b').hover(function() {
		$(this).css({
			color : "blue",
			cursor : "pointer"
		});//css
	}, function() {
		$(this).css({
			color : "black",
			cursor : "default"
		});//css
	});//hover_b
</script>
</html>