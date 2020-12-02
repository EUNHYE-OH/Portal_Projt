<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 수강신청_과목 선택 없이 저장눌렀을 때 // 수강내역 없을 때 -->
<c:if test="${fCode=='F'}">
	<script>
		alert('${message}');
		self.close();
	</script>
</c:if>


<!-- 삭제 성공 후 창닫기 -->
<c:if test="${fCode=='S'}">
<script>
		alert('${message}');
		self.close();
		
		opener.$('input:checkbox[name="subjectids"]').each(function(){
			this.checked = false;
		});//checkbox 모두 해제 
	</script>
</c:if>


</body>
</html>