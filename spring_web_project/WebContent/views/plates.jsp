<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰는 공간</title>
<style type="text/css">
	#container{
		margin: auto;
	}
	/* Style the tab buttons */
	.tablink {
	    background-color:#99b775;
	    color: white;
	    float: left;
	    border: none;
	    outline: none;
	    cursor: pointer;
	    padding: 14px 16px;
	    font-size: 17px;
	    width: 10%;
	    
	}
	/* Change background color of buttons on hover */
	.tablink:hover {
	    background-color: #777;
	}
	
	table{
		width: 850px;
		height: 200px;
		position: senter;
		BORDER-BOTTOM: #d8d8d8 1px solid;
		margin: auto;
	}
	
	#timg{
		width: 200px;
		height: 150px;
	}
	
	#write{
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

	<div id="container">
		<div id="">
			<h2>
				글이 작품이 되는 공간, 디너
			</h2>
			<span style="color:#607D8B; ">
				디너에 담긴 아름다운 작품을 감상해 보세요.<br/>
			</span>
			<span style="color:#97b2bf; ">
				그리고 다시 꺼내 보세요.<br/>
			</span>
			<span style="color:#cfd6da;; ">
				서랍 속 간직하고 있는 글과 감성을.<br/>
			</span>
			
		</div>
		<br /><br /><br /><br /><br /><br /><br />
	
	
		<p style="text-align: center; font-size: 20px; ">-CATEGORY-</p>

		<div>
			<a href="category.do?category=과학"><input type="button" value="과학" class="tablink" /></a>
			<a href="category.do?category=음식"><input type="button" value="음식" class="tablink" /></a>
			<a href="category.do?category=스포츠"><input type="button" value="스포츠" class="tablink" /></a>
			<a href="category.do?category=동물공감"><input type="button" value="동물공감" class="tablink" /></a>
			<a href="category.do?category=패션뷰티"><input type="button" value="패션뷰티" class="tablink" /></a>
			<a href="category.do?category=게임"><input type="button" value="게임" class="tablink" /></a>
			<a href="category.do?category=연예"><input type="button" value="연예" class="tablink" /></a>
			<a href="category.do?category=여행"><input type="button" value="여행" class="tablink" /></a>
			<a href="category.do?category=경제"><input type="button" value="경제" class="tablink" /></a>
			<a href="category.do?category=전체"><input type="button" value="all" class="tablink" /></a>
		</div>
	</div>
	<br />
	<c:forEach var="wdto" items="${wlist }">
		<table>
			<tr>
				<td id="write">
					<a href="writeDetail.do?wno=${wdto.wno }">
						<h3>${wdto.title}
						</h3>
					</a>
				</td>
				<td>
					<img src="${wdto.timg}" alt=""  id="timg"/>
				</td>
			</tr>
		</table>
	</c:forEach>
		
	<c:forEach var="wdto" items="${clist }">
		<table>
			<tr>
				<td id="write">
					<a href="writeDetail.do?wno=${wdto.wno }">
						<h3>${wdto.title}
						</h3>
					</a>
				</td>
				<td>
					<img src="${wdto.timg}" alt=""  id="timg"/>
				</td>
			</tr>
		</table>
	</c:forEach>
</body>
</html>