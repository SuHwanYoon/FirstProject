<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<a href="entryGrade.jsp">�� �л��������</a>&nbsp;
<a href="selectGrade.do">�� �л�������ȸ</a>&nbsp;
<a href="home.jsp">�� Ȩ����</a>&nbsp;
<c:choose>
	<c:when test="${sessionScope.LOGIN != null }">
		ȯ���մϴ� ${sessionScope.LOGIN }��
		<a href="logout.do">�ڷα׾ƿ� �ϱ�</a>
	</c:when>
	<c:otherwise>
		<a href="login.jsp">�ڷα��� �ϱ�</a>
	</c:otherwise>
</c:choose>
<a href="myInfo.do">�ڳ�����</a>