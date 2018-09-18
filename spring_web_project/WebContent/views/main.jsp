<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dinner</title>
<script type="text/javascript">
function openCity(cityName, elmnt, color) {
    // Hide all elements with class="tabcontent" by default */
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Remove the background color of all tablinks/buttons
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }

    // Show the specific tab content
    document.getElementById(cityName).style.display = "block";

    // Add the specific color to the button used to open the tab content
    elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();

function allmagazine() {
	location.href="plates.do";
	
}

</script>
<style type="text/css">
	#container{
		margin: 50px 450px auto;
	}
	.mainImg{
		width: 350px;
		height: 200px;
	}
	.magazineImg{
		width: 150px;
		height:120px;
	}
	/* Style the tab buttons */
.tablink {
    background-color: #555;
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

/* Set default styles for tab content */
.tabcontent {
    color: white;
    display: none;
    padding: 50px;
    text-align: center;
}

/* Style each tab content individually */ 
#London {background-color:red;}
#Paris {background-color:green;}
#Tokyo {background-color:blue;}
#Oslo {background-color:orange;}
#Oslo1 {background-color:purple;}
#Oslo2 {background-color:aqua;}
#Oslo3 {background-color:black;}
#Oslo4 {background-color:blue;}
#Oslo5 {background-color:fuchsia;}
#Oslo6 {background-color:lime;}

#mtd{
border:1px solid black;
width: 25%;
height: 200px;
}
#mimg{widows: 25%;
height: 85px;}
	
	
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
	
	
	
	
	<div id="London" class="tabcontent">
  <h1>과학</h1>
 <table>
			<tr>
			
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
			</tr>
			<tr>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
			</tr>
		</table>
			
</div>

<div id="Paris" class="tabcontent">
<h1>음식</h1>
 <table>
			<tr>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
			</tr>
			<tr>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
			</tr>
		</table>
		
</div>

<div id="Tokyo" class="tabcontent">
  <h1>스포츠</h1>
 <table>
			<tr>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
			</tr>
			<tr>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
			</tr>
		</table>
	
</div>

<div id="Oslo" class="tabcontent">
  <h1>동물 공감</h1>
 <table>
			<tr>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
			</tr>
			<tr>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
			</tr>
		</table>
	
		</div>
		
		<div id="Oslo2" class="tabcontent">
  <h1>패션뷰티</h1>
 <table>
			<tr>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
			</tr>
			<tr>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
			</tr>
		</table>
		
		</div>
		<div id="Oslo3" class="tabcontent">
  <h1>게임</h1>
 <table>
			<tr>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
			</tr>
			<tr>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
			</tr>
		</table>
		
		</div>
		<div id="Oslo4" class="tabcontent">
  <h1>연예</h1>
 <table>
			<tr>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
			</tr>
			<tr>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
			</tr>
		</table>
		
		</div>
		<div id="Oslo5" class="tabcontent">
  <h1>여행</h1>
 <table>
			<tr>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
			</tr>
			<tr>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
			</tr>
		</table>
		
		</div>
		<div id="Oslo6" class="tabcontent">
  <h1>경제</h1>
 <table>
			<tr>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
			</tr>
			<tr>
				<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
				<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
			</tr>
		</table>
		
		</div>
</div>

<button class="tablink" onclick="openCity('London', this, 'red')" id="defaultOpen">과학</button>
<button class="tablink" onclick="openCity('Paris', this, 'green')">음식</button>
<button class="tablink" onclick="openCity('Tokyo', this, 'blue')">스포츠</button>
<button class="tablink" onclick="openCity('Oslo', this, 'orange')">동물공감</button>
<button class="tablink" onclick="openCity('Oslo2', this, 'orange')">패션뷰티</button>
<button class="tablink" onclick="openCity('Oslo3', this, 'orange')">게임</button>
<button class="tablink" onclick="openCity('Oslo4', this, 'orange')">연예</button>
<button class="tablink" onclick="openCity('Oslo5', this, 'orange')">여행</button>
<button class="tablink" onclick="openCity('Oslo6', this, 'orange')">경제</button>
<button class="tablink" onclick="allmagazine()">전체보기</button>


	
	
	
	
	
	
	
	
	
	
	
	
	
	<div id="megazine">
		
		<table>
		<tr>
			<c:forEach var="mdto" items="${mlist }">
				<td id="mtd">
				<div>
					<a href="viewWriting.do?mno=${mdto.mno }">
					<img src="magazineImg/${mdto.mno }.jpg" alt="" class="magazineImg" />
					<p>${mdto.mtitle }</p>
					</a>
				</div>
				</td>
			</c:forEach>
		</tr>
		<tr>
		<td><a href="allmagazine.do">매거진 전체보기</a></td>
		</tr>
		</table>
	</div>
	<div>
		작가되기 이미지
	</div>
	<div>
		작가랜덤
	</div>
	<div>
		추천글
	</div>
	</div>
</body>	
</html>