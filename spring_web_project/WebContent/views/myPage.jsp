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
	/* border-top: 1px solid orange;  */
	margin-left: 18%;
	margin-right: 18%;
	padding-top: 3%;
	padding-left: 2%;
	padding-bottom: 1%;
	
}
.introduce{
	width: 45%;
	display: inline-block;
	border: 1px solid #6e946eb3;
	height: 250px;
	text-align: center;
	float: left;
	font-size: 17px;
}
.pic{
	
	margin-left: 3%;
	display: inline-block;	
	/* border: 1px solid green; */
}

.myPic{
	width: 180px;
	height: 200px;
	border-radius: 80px;
	/* border: 1px solid orange;  */
	display: inline-block;
}

table {
    width: 100%;
    border-top: 1px solid #dce0dc;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #dce0dc;
    padding: 10px;
    text-align: center;
  }
  th {
    background-color: #92c594ba;
    color: white;
  }
  td {
    background-color: #edf5ed;
    color: #54673f;
  }
  
  #my{
  	text-align: center;
  	float: right;
  	width: 100%;
  	margin: 0;
  }
  
  .con{
  	color: #54673f;
	font-weight: bold;
	text-decoration: none;
  }
  
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<% if(id != null){ %>
<div class="nickName">

	 <h4>INTRO</h4>
	 <hr /> 
	
	<div style="margin-left: 58%; m argin-right: 11%; margin-top: 1%;" id="my">
	 <span class="introduce"><br /><%= member.getIntro() %></span>
	<span class="pic"><input type="image" src="<%= member.getImg() %>" alt="" class="myPic" name="myPic" /></span>
	<form:form method="post" action="uploadModify.do"
				modelAttribute="uploadFile" enctype="multipart/form-data">
		<i>ID : <%= member.getId() %></i>
		<br /><br /><input type="file" name="file" />
		<form:errors path="file"></form:errors>
		<input type="submit" value="변경" id="img" />
		<%-- <input type="hidden" name="img" value="${filePath}" /> --%>
		<input type="hidden" name="id" value="<%= member.getId() %>" />
	</form:form>
	</div>
</div>
<div class="myUrl">
	<h4>ADDRESS</h4>
	<hr />
	<div><%= member.getAddrs1() %> <br /> <%= member.getAddrs2() %></div>
	<span>www.dinner.com/<%= member.getName() %><input type="hidden" value="www.dinner.com/@nickName" name="myUrl" /></span>
	<br />

</div>
<div class="changeEmail">
	<h4>EMAIL</h4>
	<hr />
	<div><%= member.getEmail() %></div>
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
			<td><a href="writeDetail.do?wno=${wdto.wno }" class="con">${wdto.title }</a></td>
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