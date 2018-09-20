<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search</title>
<style type="text/css">
* {
  box-sizing: border-box;
}

/* Style the search field */
form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

/* Style the submit button */
form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none; /* Prevent double borders */
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

/* Clear floats */
form.example::after {
  content: "";
  clear: both;
  display: table;
}
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}
    background-color: #FBFBFB

</style>
</head>
<body>
 <div class="imgcontainer">
    <img src="image/DINNER.png" alt="" />
  </div>


<div style="position: relative; top: 400px;">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- The form -->
<form class="example" action="search.do">
  <input type="text" placeholder="Please enter in English." name="mtitle" >
  <button type="submit"><i class="fa fa-search"></i></button>
  
  </div>
</form>
		<table >
			<tr >
	
				<c:forEach var="dto" items="${memberlist }">
				<td style=" width: 220px; height: 200px; border-radius: 50%; position: relative; left: 220px; top: 100px;">
					<img src="${dto.img }" alt="" class="memberimg" style="border-radius: 50%; position: relative; left: 30px; top: 18px; width: 150px; height: 140px;" />
					<p style="text-align: center;"><strong>~${dto.name }~</strong></p><h6 style="color: gray;">${dto.intro }</h6>
					
				</td>
				
				</c:forEach>
			</tr>
		</table>
	
</body>
</html>