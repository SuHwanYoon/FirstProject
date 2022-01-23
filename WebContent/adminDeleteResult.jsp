<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${param.R > 0 }">
		<script type="text/javascript">
			alert("관리자가 삭제완료");
			location.href="selectGrade.do";
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert("관리자 삭제 못함");
			location.href="selectGrade.do";
			</script>
	</c:otherwise>
</c:choose>
</body>
</html>