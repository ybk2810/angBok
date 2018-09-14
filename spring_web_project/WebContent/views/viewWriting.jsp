<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.header {
	border-bottom: 1px solid green;
	padding-top: 2%;
	padding-bottom: 2%;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 10%;
	background-color: #D3F3ED;
}

.title {
	margin-left: 15%;
	font-size: 40px;
	padding-left: 2%;
	
	border: 1px solid orange;
}

.writer {
	margin-left: 30px;
	margin-right: 10px;
	float: right;
	
}

#writer1 {
	padding-top: 30px;
	margin-right: 20%;
	border: 1px solid red;
}

#writer2 {
	padding-top: 100px;
	margin-right: 35%;
	border: 1px solid red;
}

.writing {
	margin-left: 15%;
	margin-right: 15%;
	border: 1px solid green;
	height: 800px;
	
}

.introduce {
	margin-top: 5%;
	margin-left: 15%;
	margin-right: 15%;
	border: 1px solid green;
}

.profilePic {
	margin-left: 33%;
	margin-top: 2%;
	margin-bottom: 2%;
	display: inline-block;
	width: 180px;
	height: 200px;
	border: 1px solid red;
	display: inline-block;
}

.container {
	margin-top: 15%;
}

.reply {
	margin-top: 5%;
	margin-left: 15%;
	margin-right: 15%;
	height: 300px;
	border: 1px solid green;
}
</style>
</head>
<body>
	<div class="header">
		<div>
			<span class="title">제목title제목title</span> <span class="writer" id="writer1">작성자</span>
		</div>
	</div>





	<div class="container">

		<div class="writing">내용</div>

		<div class="introduce">
			<span class="profilePic">작가 사진</span> <span class="writer"
				id="writer2">작가 필명</span>
		</div>

		<div class="reply">
			<span>댓글</span>
		</div>


	</div>

	<div class="footer"></div>

</body>
</html>