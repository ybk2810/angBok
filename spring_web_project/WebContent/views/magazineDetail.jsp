<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.header {
	border-bottom: 1px solid #d8d8d8;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 70px;
	background-color: #FBFBFB;
}

.container {
	margin: auto;
	margin-top: 100px;
	width: 800px;
}

.titleContainer {

	width: 100%;
	border-bottom: 1px solid #d8d8d8;
}

.title {
	width: 800px;
	font-size: 38px;
}

.writer {
	width: 800px;
}

#writer1 {
	color: darkgray;
}
#writer2 {
	color: gray;
}
#writer3 {
	color: darkgray;
}

.writing {
	border: 1px solid #FBFBFB;
}

.reply {
	height: 300px;
	border: 1px solid green;
}
</style>
</head>
<body>
	<div class="header">
		<%@ include file="header.jsp" %>
		<%
			Object obj1 = session.getAttribute("member");
	  		MemberDTO member1 = (MemberDTO) obj1;
		%>
	</div>

	<div class="container">
		<div class="titleContainer">
			<span class="title">${mgdto.mtitle}<br /></span> 
			<br />
			<span class="writer" id="writer1">by </span>
			<span class="writer" id="writer2">${mgdto.mwriter} </span>
			<span class="writer" id="writer3">${mgdto.mreg}</span>
		</div>
		<br />
		<br />
		<div class="writing">
			<img src="magazineImg/${mgdto.mno}.png" alt=""  id="magazineimg"/>
		</div>
		<div class="reply">
			<span>댓글</span>
			
			<table>
				<c:forEach var="rdto" items="${rlist}">
					<tr>
						<td>${rdto.rname }</td>
						<td>${rdto.rcontents }</td>
					</tr>
				</c:forEach>
			</table>
			
			<form action="reviewOk.do" method="post">
				<table>
					<tr>
						<td>댓글작성</td>
						<td>
							<textarea name="rcontents" id="" cols="80" rows="10"></textarea>
							<input type="hidden" name="rwno" value="${mgdto.mno }" />
							<input type="hidden" name="rimg" value="<%= member1.getImg() %>" />
							<input type="hidden" name="rname" value="<%= member1.getName() %>" />
							<input type="submit" value="등록" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>

	<div class="footer">
	</div>

</body>
</html>