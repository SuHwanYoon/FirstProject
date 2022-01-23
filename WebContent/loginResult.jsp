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
		<c:when test="${param.R == 'NOID' }">
			<script type="text/javascript">
				alert("아이디가 존재하지 않습니다");
				location.href="home.jsp";
			</script>
		</c:when>
		<c:when test="${param.R == 'NOTPWD' }">
				<script type="text/javascript">
				alert("암호가 틀립니다");
				location.href="home.jsp";
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("로그인 되었습니다");
				location.href="home.jsp";
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>