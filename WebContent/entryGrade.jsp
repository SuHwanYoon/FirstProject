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
<script type="text/javascript">
function check(f){
	if(f.ID.value == ''){alert("�й��� �Է��ϼ���"); return false;}
	else{
		if(isNaN(f.ID.value)){alert("�й��� ���ڷ� �Է��ϼ���"); return false;}
	}
	if(f.NAME.value == ''){alert("�̸��� �Է��ϼ���"); return false;}
	if(f.MAJOR.value == ''){alert("������ �Է��ϼ���"); return false;}
	if(! f.GENDER[0].checked && ! f.GENDER[1].checked)
		{alert("������ �����ϼ���"); return false;}
	if(f.SUBJECT.value == ''){alert("������ �Է��ϼ���"); return false;}
	var c = confirm("�Է��� ������ �½��ϱ�?");
	if(c == false)return false;
}

</script>
	<form action="putScore.do" method="post" name="frm" onSubmit="return check(this)">
		<table>
			<tr><th>�й�</th><td><input type="text" name="ID" maxlength="8"></td></tr>
			<tr><th>�̸�</th><td><input type="text" name="NAME" ></td></tr>
			<tr><th>����</th><td><input type="text" name="MAJOR" ></td></tr>
			<tr><th>����</th><td>
			��<input type="radio" name="GENDER" value="����">
			��<input type="radio" name="GENDER" value="����">
			
			</td></tr>
			<tr><th>����</th><td><input type="text" name="SUBJECT" ></td></tr>
			<tr><th>����</th><td>
			<select name="GRADE">
			<option>A</option>
			<option>B</option>
			<option>C</option>
			<option>D</option>
			</select>
			</td></tr>
			<tr><td colspan="2" align="center">
				<input type="submit" value="���">
				<input type="reset" value="���">
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