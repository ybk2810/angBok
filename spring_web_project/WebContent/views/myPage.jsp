<%@page import="kr.co.dinner.service.memberService"%>
<%@page import="kr.co.dinner.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.myW, .nickName, .myUrl, .changeEmail, .memberWithdraw{
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

table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    text-align: center;
  }
  th {
    background-color: #bbdefb;
  }
  td {
    background-color: #e3f2fd;
  }
  
  
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<% if(id != null){ %>
<div class="nickName">

	 <div><%= member.getId() %></div>
	 <span class="introduce"><%= member.getIntro() %><input type="hidden" value="nickName님의 디너입니다." name="introduce" /></span>
	<span class="pic"><input type="image" src="<%= member.getImg() %>" alt="" class="myPic" name="myPic" /></span>
	
	<div style="margin-left: 58%; m argin-right: 11%; margin-top: 1%;">
	<form:form method="post" action="uploadModify.do"
				modelAttribute="uploadFile" enctype="multipart/form-data">
		사진고르기<input type="file" name="file" />
		<form:errors path="file"></form:errors>
		<input type="submit" value="변경" id="img" />
		<%-- <input type="hidden" name="img" value="${filePath}" /> --%>
		<input type="hidden" name="id" value="<%= member.getId() %>" />
	</form:form>
	</div>
</div>
<div class="myUrl">
	<div><%= member.getAddrs1() %> <br /> <%= member.getAddrs2() %></div>
	<span>www.dinner.com/<%= member.getName() %><input type="hidden" value="www.dinner.com/@nickName" name="myUrl" /></span>
	<span><input type="button" value="닉네임변경" /></span>

</div>
<div class="changeEmail">
	<div><%= member.getEmail() %></div>
	<span><input type="button" value=" E-mail주소 수정" /></span>
</div>
<% } %>
<% 
	
%>
<div class="myW">
	<table>
		<thead>
		<tr>
			<th>제목</th>
			<th>카테고리</th>
			<th>작성일자</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="wdto" items="${wlist }">
		<tr>
			<td>${wdto.title }</td>
			<td><center>${wdto.category }</center></td>
			<td>${wdto.reg }</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
</div>


<div class="memberWithdraw">
	<span><a href="delete.do?id=${id }">탈퇴하기</a></span>
	<span><a href="modify.do?id=${id }">수정하기</a></span>
</div> 
<%@ include file="footer.jsp" %>
</body>
</html>