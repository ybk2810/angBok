<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dinner</title>
<style type="text/css">
	img{
		width: 240px;
		height: 180px;
	}
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>이미지</th>
			<th>작성자</th>
			<th>등록날짜</th>
		</tr>
		<c:forEach var="mdto" items="${amlist}" >
			<tr>
				<td>${mdto.mno}</td>
				<td>${mdto.mtitle}</td>
				<td><img src="magazineImg/${mdto.mno}.jpg" alt="" /></td>
				<td>${mdto.mwriter}</td>
				<td>${mdto.mreg}</td>
			</tr>
		</c:forEach>

	</table>



</body>
</html>