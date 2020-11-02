<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoticeBoard NewInsert</title>
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="resources/css/noticeBoardInsert.css">
</head>
<body>
	<form acrtion="nbinsert" method="post">
		<header>
			<h1>공 지 사 항</h1>
		</header>
		<div id="div1">
		<form>
			<table>
				<tr height="40">
					<td bgcolor="#566881" style="border-radius: 5px; text-align: center; 
					color: white; border: 1px solid #000033; width: 70px;">제 목</td>
					<td><input type="text" name="title" id="title"></td>
				</tr>
				<tr height="40">
					<td bgcolor="#566881" style="border-radius: 5px; text-align: center; 
					color: white; border: 1px solid #000033; width: 70px;">내 용</td>
					<td><textarea rows="25" cols="60" name="contents" id="contents"
						 style="resize:none; font-size:20px; overflow-y:scroll;"></textarea></td>
				</tr>
				<tr height="40">
					<td bgcolor="#566881" style="border-radius: 5px; text-align: center; 
					color: white; border: 1px solid #000033; width: 70px;">첨부파일</td>
					<td><img src="" class="attachment">
					<input type="file" name="attfile" id="attfile"><br>
					<script>
					
					$('#attfile').change(function(){
						if(this.files && this.files[0]) {
							var reader = new FileReader;
					 			reader.onload = function(e) {
				 				$(".attachment").attr("src", e.target.result)
				 					.width(70).height(50); 
				 				}
				 				reader.readAsDataURL(this.files[0]);
				 		} 
					});
					
					</script>
					</td></tr>
				<tr height="40"><td></td>
					<td>
						<input type="submit" value="등록" id="sub">&nbsp;&nbsp;&nbsp; 
						<input type="reset" value="취소" id="res"></td>
				</tr>
			</table>
			</form>
		</div>
		<footer>
			<div>
				<ul>
					<li><a href="#" class="a1">개인정보처리방침</a></li>
					<li><a href="#">이메일무단수집거부</a></li>
					<li><a href="#">오시는길</a></li>
					<li><a href="#">교내전화번호</a></li>
					<li><a href="#">학내백신다운로드</a></li>
					<ul>
						<ul>
							<li>은혜캠퍼스 충청남도 아산시 배방읍 호서로79번길20 (우)31499 TEL:041-540-5114</li>
							<li>승빈캠퍼스 충청남도 천안시 동남구 호서대길12 (우)31066 TEL:041-560-8114</li>
							<li>민혁캠퍼스 충청남도 천안시 배방읍 호서대길12 (우)31499 TEL:041-560-8115</li>
							<li>COPYRIGHT(C) 2011 HOSEO UNIVERSITY. ALL RIGHT RESERVED</li>
						</ul>
						<img src="resources/image/hoseologo1.png" width="140" height="50">
					</ul>
				</ul>
			</div>
		</footer>
	</form>
</body>
</html>