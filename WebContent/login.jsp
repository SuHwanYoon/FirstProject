<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body {background-color:yellow;}
header {background-color:#F781F3;}
section {background-color:#40FF00;}
footer {background-color:#F781F3;}
menu {border:2px solid blue;}
menu {background-color:#2EFEF7}
</style>
</head>
<body>

<header>
	<h1 align="center">�������� ver 1.0</h1>
</header>
<div align=center>
<menu>
	<%@ include file="menu_header.jsp" %>
</menu>
<section>
<c:if test="${param.MSG == 'Y' }">
	<script type="text/javascript">
		alert("������ �Է��Ϸ��� �α����� �ؾ��մϴ�");
	</script>
</c:if>
<c:if test="${param.MSG == 'DU' }">
	<script type="text/javascript">
	alert("���� ������ �Ϸ���  �α����� �ؾ��մϴ�");
	</script>
</c:if>
<c:if test="${param.MSG == 'NOLOGIN' }">
	<script type="text/javascript">
	alert("�������� ������ �α����� �ؾ��մϴ�")
	</script>
</c:if>
<form action="login.do" method="post">
	<table>
		<tr><th>ID</th>
		<td><input type="text" name="ID"></td></tr>
		<tr><th>��ȣ</th>
		<td><input type="password" name="PWD"></td></tr>
	</table>
	<table>
		<tr><td align="center">
			<input type="submit" value="�α���">
			<input type="reset" value="���"><br/>
			<a href="userEntry.jsp">�ڽű԰����� ���</a>
		</td></tr>
	</table>
</form>
</section>
</div>
<footer>

	<h3 align="center">CopyRight 2021 ����ȯ All right reserved. KOSEA</h3>
</footer>
</body>
</html>