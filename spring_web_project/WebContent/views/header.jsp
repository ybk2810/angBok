<%@page import="kr.co.dinner.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>

.button {
  border-radius: 4px;
  background-color: #dcf1c5;
  border: none;
  color:#3f51b5;
  text-align: center;
  font-size: 15px;
  padding: 20px;
  width: 125px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
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
img{
	
}
#logoimg{

	position: absolute;
	left: 800px;
}
.btn {
    border: none;
    background-color: inherit;
    padding: 14px 28px;
    font-size: 16px;
    cursor: pointer;
    display: inline-block;
}

/* On mouse-over */
.btn:hover {background: #eee;}

.success {color: green;}
</style>
<script type="text/javascript">
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
function Start() {
   
    location.href = "login1.do";
}

function write() {
	   
    location.href = "write.do";
}

function Search() {
	   
    location.href = "searchForm.do";
}



</script>

	<%
		String id = (String)session.getAttribute("id");
  		Object obj = session.getAttribute("member");
  		MemberDTO member = (MemberDTO) obj;
	%>

	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<%
			if(id != null){
		%>
			<a href="#"><div><img src="<%=member.getImg() %>" alt="a" id="profile" /></div></a>
			<a href="#"><%=member.getName() %></a>
			<a href="write.do">글쓰기</a>
		<%
			}else{
		%>
			<a href="#"><div><img src="image/DINNER.png" alt="a" id="profile" /></div></a>
			<a href="login1.do">시작하기</a>
		<%
			}
		%>

      <a href="#">--------------</a>
      <a href="myPage.do?i=${mdto.id }">My Dinner</a> 
      <a href="main.do">Home</a> 
      <a href="#">최신글</a>
      <a href="allmagazine.do">전체 매거진 </a>
   </div>
   <div id="header">
      <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; <img src="image/DINNER.png" alt="" id="logoimg" /></span>
 
      	<%
			if(id != null){
		%>
      		<!-- <button class="button" onclick="write()"><span>글쓰기</span></button> -->
      	<%
			}else{
      	%>
     		<button class="button" onclick=" Start()"><span>LOGIN</span></button>
      	<%
			}
      	%>
 
		<button class="btn success" onclick=" Search()">검색</button>
   </div>
