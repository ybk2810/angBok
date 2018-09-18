<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
body {
    font-family: "Lato", sans-serif;
}
 
.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}
#profile{
	width: 60px;
	height: 60px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<script type="text/javascript">
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>

	<%
		String id = (String)session.getAttribute("id");
	%>

	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<%
			if(id != null){
		%>
			<a href="#"><div><img src="${mdto.img }" alt="a" id="profile" /></div></a>
			<a href="login1.do">글쓰기</a>
		<%
			}else{
		%>
			<a href="#"><div><img src="image/a.jpg" alt="a" id="profile" /></div></a>
			<a href="login1.do">시작하기</a>
		<%
			}
		%>
		<a href="#">--------------</a>
		<a href="#">My Dinner</a> 
		<a href="main.do">Home</a> 
		<a href="#">최신글</a>
		<a href="#">매거진</a>
	</div>
	<div id="header">
		<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Dinner</span>
		<a href="login1.do">시작하기</a>
		<a href="search.do">검색</a>
	</div>