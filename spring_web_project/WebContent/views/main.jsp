<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dinner</title>
<style type="text/css">
	#container{
		margin: 50px 450px auto;
	}
	.mainImg{
		width: 350px;
		height: 200px;
	}
	.magazineImg{
		width: 150px;
		height:120px;
	}
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<div id="container">
	<div id="">
		<h3>
			글이 작품이 되는 공간, 디너
		</h3>
		<span>
			디너에 담긴 아름다운 작품을 감상해 보세요.<br/>
		</span>
		<span>
			그리고 다시 꺼내 보세요.<br/>
		</span>
		<span>
			서랍 속 간직하고 있는 글과 감성을.<br/>
		</span>
	</div>
	<div>
		<table>
			<tr>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
			</tr>
			<tr>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
			</tr>
		</table>
	</div>
	<div id="category">
		<a href="#">과학</a>
		<a href="#">음식</a>
		<a href="#">스포츠</a>
		<a href="#">동물공감</a>
		<a href="#">패션뷰티</a>
		<a href="#">게임</a>
		<a href="#">연예</a>
		<a href="#">여행</a>
		<a href="#">경제</a>
		<a href="plates.do">전체보기</a>
	</div>
	<div id="megazine">
		매거진
		<table>
		<tr>
			<c:forEach var="mdto" items="${mlist }">
				<td>
				<div>
					<img src="magazineImg/${mdto.mno }.jpg" alt="" class="magazineImg" />
					<p>${mdto.mtitle }</p>
				</div>
				</td>
			</c:forEach>
		</tr>
		<tr>
		<td><a href="allmagazine.do">매거진 전체보기</a></td>
		</tr>
		</table>
	</div>
	<div>
		작가되기 이미지
	</div>
	<div>
		작가랜덤
	</div>
	<div>
		추천글
	</div>
	</div>
</body>	
</html>