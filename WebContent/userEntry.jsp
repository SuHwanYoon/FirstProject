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
	if(f.IDCHECKED.value == ''){alert("�ߺ��˻縦 ���ּ���"); return false;}
	if(f.ENTRYID.value == ''){alert("���̵� �Է��ϼ���"); return false;}
	if(f.ENTRYPWD.value == ''){alert("��й�ȣ�� �Է��ϼ���"); return false;}
	if(f.ENTRYPWD.value != f.PWDD.value){
		alert("��ȣ�� ��ġ���� �ʽ��ϴ�"); return false;
	}
	var c = confirm("�����Ͻðڽ��ϱ�?");
	if(c == false)return false;
}
function idCheck(){
	if(document.frm.ENTRYID.value == ''){alert("������ �Է��ϼ���"); return;}
	var url = "idCheck.do?USER_ID="+document.frm.ENTRYID.value;
	window.open(url,"check","width=450,height=200");
}
</script>
	<form action="entry.do" method="post" name="frm" onSubmit="return check(this)">
	<input type="hidden" name="IDCHECKED">
		<table>
			<tr><th>���̵�</th><td><input type="text" name="ENTRYID"  id="userid" maxlength="8">
			<input type="button" value="�ߺ��˻�" onClick="idCheck()">
			</td></tr>
			<tr><th>��й�ȣ</th><td><input type="password" name="ENTRYPWD">
			
			</td></tr>
			<tr><th>��й�ȣȮ��</th><td>
			<input type="password" name="PWDD">
			</td></tr>
			<tr><td colspan="2" align="center">
				<input type="submit" value="����">
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