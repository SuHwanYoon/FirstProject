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
	<h2>���̵� �ߺ� Ȯ��</h2>
	<form action="idCheck.do" name="frm">
	���̵�:<input type="text" name="USER_ID" value="${ENTRYID }">
	<input type="submit" value="�ߺ��˻�">
	</form>
<c:if test="${ ! empty ACU }">
${ACU }�� �̹� ������Դϴ�
</c:if>
<c:if test="${ empty ACU }">
${ENTRYID }�� ����ϽǼ� �ֽ��ϴ�
<input type="button" value="���" onClick="idok()">
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