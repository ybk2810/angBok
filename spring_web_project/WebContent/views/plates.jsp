<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰는 공간</title>
</head>
<body>

	<%@ include file="header.jsp" %>

	<div>카테고리제목</div>
	<div>
		<a href="#"><input type="button" value="과학" /></a>
		<a href="#"><input type="button" value="음식" /></a>
		<a href="#"><input type="button" value="스포츠" /></a>
		<a href="#"><input type="button" value="동물/공감" /></a>
		<a href="#"><input type="button" value="패션/뷰티" /></a>
		<a href="#"><input type="button" value="게임" /></a>
		<a href="#"><input type="button" value="연예" /></a>
		<a href="#"><input type="button" value="여행" /></a>
		<a href="#"><input type="button" value="경제" /></a>
	</div>
<table>
	<c:forEach var="wdto" items="${wlist }">
	<tr>
		<td>${wdto.title }</td>
		<td rowspan="3"><img src="image/360.png" alt="" /></td>	
	</tr>
	<tr>
		<td>${wdto.contents }</td>
	</tr>
	<tr>
		<td>by ${wdto.wname }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>