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
	<h1 align="center">성적관리 ver 1.0</h1>
</header>
<div align=center>
<menu>
	<%@ include file="menu_header.jsp" %>
</menu>
<section>
<c:if test="${param.MSG == 'Y' }">
	<script type="text/javascript">
		alert("성적을 입력하려면 로그인을 해야합니다");
	</script>
</c:if>
<c:if test="${param.MSG == 'DU' }">
	<script type="text/javascript">
	alert("삭제 변경을 하려면  로그인을 해야합니다");
	</script>
</c:if>
<c:if test="${param.MSG == 'NOLOGIN' }">
	<script type="text/javascript">
	alert("내정보를 보려면 로그인을 해야합니다")
	</script>
</c:if>
<form action="login.do" method="post">
	<table>
		<tr><th>ID</th>
		<td><input type="text" name="ID"></td></tr>
		<tr><th>암호</th>
		<td><input type="password" name="PWD"></td></tr>
	</table>
	<table>
		<tr><td align="center">
			<input type="submit" value="로그인">
			<input type="reset" value="취소"><br/>
			<a href="userEntry.jsp">★신규가입자 등록</a>
		</td></tr>
	</table>
</form>
</section>
</div>
<footer>

	<h3 align="center">CopyRight 2021 윤수환 All right reserved. KOSEA</h3>
</footer>
</body>
</html>