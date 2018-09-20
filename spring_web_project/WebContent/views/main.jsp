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
	function clickme() {
		location.href="write.do" 
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
	.memberimg{
		width: 150px;
		height: 120px;
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
	
	/* Set default styles for tab content */
	.tabcontent {
	    color: #1c581e;
	    display: none;
	    padding: 50px;
	    text-align: center;
	}

	/* Style each tab content individually */ 



	/* #London { background-color: ;
	     }
	#Paris {background-color:#3a713c;}
	#Tokyo {background-color:#478c49;}
	#Oslo {background-color:#53a556;}
	#Oslo1 {background-color:#5eb761;}
	#Oslo2 {background-color:#68cc6c;}
	#Oslo3 {background-color:#74e078;}
	#Oslo4 {background-color:#79e87d;}
	#Oslo5 {background-color:#7bef7f;}
	#Oslo6 {background-color:#84ff88;} */

	#mtd{
		border:4px solid #cceca7;
		width: 25%;
		height: 200px;
		border-radius: 20px;
	}
	#mimg{
		width: 100%;
		border-radius: 40px;
		height: 200px;
	}

	#mtitle{
		color:#093e09;
		font-weight: bolder;
		text-align: center; 
	}
	#write{
		position:fixed;
		right:30px;
		bottom:30px;
		padding: 15px 25px;
		font-size: 24px;
		text-align: center;
		cursor: pointer;
		outline: none;
		color: #fff;
		background-color: #4CAF50;
		border: none;
		border-radius: 15px;
		box-shadow: 0 9px #999;
	}
	
	#write:hover{
		background-color: #3e8e41
	}
	
	#write:active{
		background-color: #3e8e41;
		box-shadow: 0 5px #666;
		transform: translateY(4px);
	}
	
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<%-- <%
		String memberid = (String)session.getAttribute("id");
	%> --%>
	
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
							<c:forEach var="wdto" items="${wlist }">
								<td>
									<img src="${wdto.timg }" alt="" class="mainImg" />
									<p>${wdto.title }</p>
								</td>
							</c:forEach>
						</tr>
						<!-- <tr>
							<td><img src="image/a.jpg" alt="" class="mainImg" /></td>
							<td><img src="image/360.jpg" alt="" class="mainImg" /></td>
						</tr> -->
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

		<button class="tablink" onclick="openCity('London', this, 'green')" id="defaultOpen"><a href="#">과학</a></button>
		<button class="tablink" onclick="openCity('Paris', this, 'green')">음식</button>
		<button class="tablink" onclick="openCity('Tokyo', this, 'green')">스포츠</button>
		<button class="tablink" onclick="openCity('Oslo', this, 'green')">동물공감</button>
		<button class="tablink" onclick="openCity('Oslo2', this, 'green')">패션뷰티</button>
		<button class="tablink" onclick="openCity('Oslo3', this, 'green')">게임</button>
		<button class="tablink" onclick="openCity('Oslo4', this, 'green')"><a href="mainCategory.do?category=연예">연예</a></button>
		<button class="tablink" onclick="openCity('Oslo5', this, 'green')">여행</button>
		<button class="tablink" onclick="openCity('Oslo6', this, 'green')">경제</button>
		<button class="tablink" onclick="allmagazine()" style="background-color: gray;">전체보기</button>

		<br><br><br><br><br>
		<p style="text-align: center; font-size: 32px; font-weight:bold;   background: -webkit-linear-gradient(30deg, #2f5d30, #e9ff2d);
   		 color: transparent;
   		 -webkit-background-clip: text; "> ~T O D A Y &nbsp;&nbsp;&nbsp;&nbsp; M A G A Z I N E~</p>
		<div id="megazine">
		
		<table>
			<tr>
				<c:forEach var="mdto" items="${mlist }">
					<td id="mtd">
					<div>
					<a href="magazineDetail.do?mno=${mdto.mno }">
						<img src="magazineImg/${mdto.mno }.jpg" alt="" class="magazineImg" id="mimg"/>
						</a>
						<p id="mtitle">${mdto.mtitle }</p>
					</div>
					</td>
				</c:forEach>
			</tr>
		</table>
	</div>
	
	<%
		if(id != null){
	%>
		<button class="button" onclick=" clickme()" id="write">글쓰기</button>
	<%
		}
	%>
	<br>
	<br>
		<h3 style="text-align: center; font-size: 18px;" >-추천 작가-</h3>
		
		<hr  style="color: 2px solid green;"/>
		<div >
		<table >
			<tr >
				<c:forEach var="dto" items="${memberlist }">
				<td style=" width: 200px; height: 130px; position: relative; left: 260px;     border-radius: 87px;">
					<img src="${dto.img }" alt="" class="memberimg" style="border-radius: 50%; position: relative; left: 27.5px; top: 18px;" />
					<p style="text-align: center;"><strong>~${dto.name }~</strong> </p><h6 style="color: gray;">${dto.intro }</h6>
					
				</td>
				
				</c:forEach>
			</tr>
		</table>
		</div>
	<br>
	<br>
	<%@ include file="footer.jsp" %>
</body>	
</html>