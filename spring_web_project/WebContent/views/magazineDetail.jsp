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
	height: 300px;
	border: 1px solid green;
}
</style>
</head>
<body>
	<div class="header">
		<%@ include file="header.jsp" %>
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
		</div>
	</div>

	<div class="footer">
	</div>

</body>
</html>