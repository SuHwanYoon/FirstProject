<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<a href="entryGrade.jsp">★ 학생성적등록</a>&nbsp;
<a href="selectGrade.do">★ 학생성적조회</a>&nbsp;
<a href="home.jsp">★ 홈으로</a>&nbsp;
<c:choose>
	<c:when test="${sessionScope.LOGIN != null }">
		환영합니다 ${sessionScope.LOGIN }님
		<a href="logout.do">★로그아웃 하기</a>
	</c:when>
	<c:otherwise>
		<a href="login.jsp">★로그인 하기</a>
	</c:otherwise>
</c:choose>
<a href="myInfo.do">★내정보</a>