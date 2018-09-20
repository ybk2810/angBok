<%@page import="kr.co.dinner.service.memberService"%>
<%@page import="kr.co.dinner.dto.MemberDTO"%>
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
<%@ include file="header.jsp" %>
<form action="modifyOk.do" method="post">
<% if(id != null){ 
%>
<div class="nickName">
	 <div><input type="text" name="id" value=<%= member.getId() %>></div>
	 <span class="introduce"><textarea name="intro" id="" cols="30" rows="10"><%= member.getIntro() %></textarea></span>
	
	
</div>
<div class="myUrl">
	<div><input type="text" name="addrs1" value=<%= member.getAddrs1() %>/> <br /> <input type="text" name="addrs2" value=<%= member.getAddrs2() %>/></div>
	<span>www.dinner.com/<input type="text" name="name" value=<%= member.getName() %> /></span>
	<span><input type="button" value="닉네임변경" /></span>

</div>
<div class="changeEmail">
	<div><input type="text" name="email" value=<%= member.getEmail() %>/></div>
	<span><input type="button" value=" E-mail주소 수정" /></span>
</div>
<% } %>
<div class="memberWithdraw">
	<span><input type="submit" value="수정완료" /></span>
</div> 
</form>
<%@ include file="footer.jsp" %>
</body>
</html>