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
			alert("������ �Ϸ�Ǿ����ϴ�");
			location.href="selectGrade.do";
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert("������ �Ϸ���� �ʾҽ��ϴ�");
			location.href="selectGrade.do";
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>