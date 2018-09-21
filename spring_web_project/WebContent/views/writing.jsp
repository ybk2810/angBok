<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
}

.replyTable{
	border-top: 1px solid #d8d8d8;
	width: 800px;
}

#replyTitle{
	font-size: 19px;
}

#countNum{
	font-size: 20px;
	color: #3f51b5;
	font-weight: bold;
}

#writerimg{
	width: 50px;
	height: 50px;
	border-radius: 100px;
	margin-top: 0px;
	margin-left: 10px;
	margin-right: 10px;
}

#reviewName{
	width: 70px;
}

#reviewReg{
	width: 680px;
}

.reviewForm{
	margin: auto;
}
.reviewForm2{
	margin-right: 0px;
}

#reviewTextarea{
	width: 700px;
	height: 100px;
}

#reviewSubmit{
	margin-left: 700px;.
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
			<span class="title">${wdto.title}<br /></span> 
			<br />
			<span class="writer" id="writer1">by </span>
			<span class="writer" id="writer2">${wdto.wname} </span>
			<span class="writer" id="writer3">${wdto.reg}</span>
		</div>
		<br />
		<br />
		<div class="writing">
			${wdto.contents }
		</div>
		<div class="reply">
			<br />
			<span id="replyTitle">댓글 </span>
			<span id="countNum">${count}</span>
			<br /><br />
			<c:forEach var="rdto" items="${rlist}">
				<table class="replyTable">
					<tr>
						<td rowspan="2">
							<img src="${rdto.rimg}" alt=""  id="writerimg"/>
						</td>

						<td id="reviewName">${rdto.rname }</td>
						<td id="reviewReg">${rdto.rreg }</td>
					</tr>

					<tr>
						<td colspan="2">${rdto.rcontents }</td>
					</tr>
				</table>
				<br />
			</c:forEach>
			
			<form action="reviewOk2.do" method="post">
				<br />
				<table class="reviewForm">
					<tr>
						<td>
							<textarea name="rcontents" id="reviewTextarea" cols="80" rows="10"></textarea>
							<input type="hidden" name="rwno" value="${wdto.wno }" />
							<input type="hidden" name="rimg" value="<%= member1.getImg() %>" />
							<input type="hidden" name="rname" value="<%= member1.getName() %>" />
						</td>
					</tr>
				</table>
				<table class="reviewForm2">
					<tr>
						<td>						
							<input type="submit" value="등록" id="reviewSubmit"/>
						</td>
					</tr>
				</table>
			</form>
		</div>
		</div>
	</div>

	<div class="footer">
	</div>

</body>
</html>