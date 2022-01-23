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
<script type="text/javascript">
function check(f){
	if(f.IDCHECKED.value == ''){alert("중복검사를 해주세요"); return false;}
	if(f.ENTRYID.value == ''){alert("아이디를 입력하세요"); return false;}
	if(f.ENTRYPWD.value == ''){alert("비밀번호를 입력하세요"); return false;}
	if(f.ENTRYPWD.value != f.PWDD.value){
		alert("암호가 일치하지 않습니다"); return false;
	}
	var c = confirm("가입하시겠습니까?");
	if(c == false)return false;
}
function idCheck(){
	if(document.frm.ENTRYID.value == ''){alert("계정을 입력하세요"); return;}
	var url = "idCheck.do?USER_ID="+document.frm.ENTRYID.value;
	window.open(url,"check","width=450,height=200");
}
</script>
	<form action="entry.do" method="post" name="frm" onSubmit="return check(this)">
	<input type="hidden" name="IDCHECKED">
		<table>
			<tr><th>아이디</th><td><input type="text" name="ENTRYID"  id="userid" maxlength="8">
			<input type="button" value="중복검사" onClick="idCheck()">
			</td></tr>
			<tr><th>비밀번호</th><td><input type="password" name="ENTRYPWD">
			
			</td></tr>
			<tr><th>비밀번호확인</th><td>
			<input type="password" name="PWDD">
			</td></tr>
			<tr><td colspan="2" align="center">
				<input type="submit" value="가입">
				<input type="reset" value="취소">
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