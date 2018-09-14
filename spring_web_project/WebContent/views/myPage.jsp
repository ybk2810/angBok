<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.nickName, .myUrl, .changeEmail, .memberWithdraw{
	border-top: 1px solid orange; 
	margin-left: 18%;
	margin-right: 18%;
	padding-top: 3%;
	padding-left: 2%;
	padding-bottom: 1%;
	
}
.introduce{
	width: 55%;
	display: inline-block;
	
	border: 1px solid green;
}
.pic{
	
	margin-left: 3%;
	display: inline-block;	
	/* border: 1px solid green; */
}

.myPic{
	width: 180px;
	height: 200px;
	border: 1px solid orange; 
	display: inline-block;
}
</style>
</head>
<body>
<div class="nickName">
	
	<div>nickName<input type="hidden" value="nickName" name="myNick" /></div>
	<span class="introduce">nickName님의 너입니다.nickName님의 디너입니다.nickName님의 디너입니다.nickName님의 디너입니다.nickName님의 디너입니다.nickName님의 디너입니다.nickName님의 디너입니다.nickName님의 디너입니다.nickName님의 디너입니다.<input type="hidden" value="nickName님의 디너입니다." name="introduce" /></span>
	<span class="pic"><input type="image" src="" alt="" class="myPic" name="myPic" /></span>
	
	<div style="margin-left: 63%; margin-right: 11%; margin-top: 1%;"><input type="button" value="프로필 편집" /></div>
	
</div>
<div class="myUrl">
	<div>nickName님의 주소</div>
	<span>www.dinner.com/@nickName<input type="hidden" value="www.dinner.com/@nickName" name="myUrl" /></span>
	<span><input type="button" value="디너주소 수정" /></span>

</div>
<div class="changeEmail">
	<div>nickName님의 E-mail주소</div>
	<span>nickName@acorn.co.kr<input type="hidden" value="nickName@acorn.co.kr" name="email" /></span>
	<span><input type="button" value=" E-mail주소 수정" /></span>
</div>
<div class="memberWithdraw">
	<span><a href="">탈퇴하기</a></span>
	
</div>
</body>
</html>