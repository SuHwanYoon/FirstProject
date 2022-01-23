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
			alert("비밀번호변경이 완료되었습니다");
			location.href="home.jsp"
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert("비밀번호 변경이  완료되지 않았습니다");
			location.href="home.jsp"
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>