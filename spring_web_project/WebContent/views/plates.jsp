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

	<div id="container">
	<div id="">
		<h2>
			글이 작품이 되는 공간, 디너
		</h2>
		<span style="color:#607D8B; ">
			디너에 담긴 아름다운 작품을 감상해 보세요.<br/>
		</span>
		<span style="color:#97b2bf; ">
			그리고 다시 꺼내 보세요.<br/>
		</span>
		<span style="color:#cfd6da;; ">
			서랍 속 간직하고 있는 글과 감성을.<br/>
		</span>
		
	</div>
	<br /><br /><br /><br /><br /><br /><br />
	
	<p style="text-align: center; font-size: 20px; ">-CATEGORY-</p>
	
	<div>
	<a href="category.do?category=과학"><input type="button" value="과학" /></a>
		<a href="category.do?category=음식"><input type="button" value="음식" /></a>
		<a href="category.do?category=스포츠"><input type="button" value="스포츠" /></a>
		<a href="category.do?category=동물공감"><input type="button" value="동물공감" /></a>
		<a href="category.do?category=패션뷰티"><input type="button" value="패션뷰티" /></a>
		<a href="category.do?category=게임"><input type="button" value="게임" /></a>
		<a href="category.do?category=연예"><input type="button" value="연예" /></a>
		<a href="category.do?category=여행"><input type="button" value="여행" /></a>
		<a href="category.do?category=경제"><input type="button" value="경제" /></a>
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
	<c:forEach var="wdto" items="${clist }">
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