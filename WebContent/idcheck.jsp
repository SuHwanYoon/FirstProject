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
<div align="center">
	<h2>아이디 중복 확인</h2>
	<form action="idCheck.do" name="frm">
	아이디:<input type="text" name="USER_ID" value="${ENTRYID }">
	<input type="submit" value="중복검사">
	</form>
<c:if test="${ ! empty ACU }">
${ACU }는 이미 사용중입니다
</c:if>
<c:if test="${ empty ACU }">
${ENTRYID }는 사용하실수 있습니다
<input type="button" value="사용" onClick="idok()">
</c:if>
</div>
<script type="text/javascript">
function idok(){
	opener.document.frm.IDCHECKED.value = "OK";
	opener.document.getElementById("userid").readOnly = true;
	opener.document.frm.ENTRYID.value = document.frm.USER_ID.value;
	self.close();
	
}
</script>
</body>
</html>