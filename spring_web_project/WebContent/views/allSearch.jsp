<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dinner</title>
<style type="text/css">
	table{
		width: 850px;
		height: 200px;
		position: senter;
		BORDER-BOTTOM: #d8d8d8 1px solid;
		margin: auto;
	}
	
	#magazineimg{
		width: 200px;
		height: 150px;
	}
	
	#magazine{
		width: 650px;
		height: 150px;
		margin: left;
	}
	
	*{
		background-color: #FBFBFB;
	}
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	
		<h3 style="text-align: center;">매거진</h3>
		<hr />
		  
		
	<c:forEach var="mdto" items="${mglist}" >
		<table>
			<tr>
				<td id="magazine">
					<a href="magazineDetail.do?mno=${mdto.mno }">
						<h3>${mdto.mno}. ${mdto.mtitle}</h3>
					</a>
				</td>
				<td>
					<a href="magazineDetail.do?mno=${mdto.mno }">
						<img src="magazineImg/${mdto.mno}.jpg" alt=""  id="magazineimg"/>
					</a>
				</td>
			</tr>
		</table>
	</c:forEach>
		<hr />
		<h3 style="text-align: center;">작가글</h3>
		<hr />
	<c:forEach var="wdto" items="${wglist}" >
		<table>
			<tr>
				<td id="magazine">
					<a href="writeDetail.do?wno=${wdto.wno }">
						<h3>${wdto.title}</h3>
					</a>
				</td>
				<td>
					<a href="writeDetail.do?wno=${wdto.wno }">
						<img src="${wdto.timg}" alt=""  id="magazineimg"/>
					</a>
				</td>
			</tr>
		</table>
	</c:forEach>
</body>
</html>