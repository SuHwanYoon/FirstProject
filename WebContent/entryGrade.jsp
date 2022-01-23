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
	if(f.ID.value == ''){alert("학번을 입력하세요"); return false;}
	else{
		if(isNaN(f.ID.value)){alert("학번은 숫자로 입력하세요"); return false;}
	}
	if(f.NAME.value == ''){alert("이름을 입력하세요"); return false;}
	if(f.MAJOR.value == ''){alert("전공을 입력하세요"); return false;}
	if(! f.GENDER[0].checked && ! f.GENDER[1].checked)
		{alert("성별을 선택하세요"); return false;}
	if(f.SUBJECT.value == ''){alert("과목을 입력하세요"); return false;}
	var c = confirm("입력한 내용이 맞습니까?");
	if(c == false)return false;
}

</script>
	<form action="putScore.do" method="post" name="frm" onSubmit="return check(this)">
		<table>
			<tr><th>학번</th><td><input type="text" name="ID" maxlength="8"></td></tr>
			<tr><th>이름</th><td><input type="text" name="NAME" ></td></tr>
			<tr><th>전공</th><td><input type="text" name="MAJOR" ></td></tr>
			<tr><th>성별</th><td>
			남<input type="radio" name="GENDER" value="남자">
			여<input type="radio" name="GENDER" value="여자">
			
			</td></tr>
			<tr><th>과목</th><td><input type="text" name="SUBJECT" ></td></tr>
			<tr><th>학점</th><td>
			<select name="GRADE">
			<option>A</option>
			<option>B</option>
			<option>C</option>
			<option>D</option>
			</select>
			</td></tr>
			<tr><td colspan="2" align="center">
				<input type="submit" value="등록">
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