<%@page import="kr.co.dinner.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script>

<style type="text/css">
.imgcontainer {
    text-align: center;
    margin: 80px 0 12px 0;
}

</style>
</head>
<body>

<%
   Object obj = session.getAttribute("member");
   MemberDTO member = (MemberDTO) obj;
%>

<br />

<div id="form" style="position: relative; left: 400px;">
      <h4 style="color: #697d52;"><h5>제목 사진을 등록해주세요</h5></h4>

      <form:form method="post" action="upload2.do" modelAttribute="uploadFile" enctype="multipart/form-data">
         <input type="file" name="file" id="" />

         <form:errors path="file"></form:errors>

         <input type="submit" value="등록" id="img" />
      </form:form>
</div>
<br />
<form action="writing.do" method="get"> 
<div style="position: relative; left: 400px; "><h1 style="color: #c2c5be;">제목을 입력해 주세요</h1> <input type="text" name="title" id="title"  style="width: 1000px;
    height: 40px; "/></div>
<br />
<SELECT name="category" style="position: relative; left: 400px;">
    <OPTION value="">카테고리 선택</OPTION>
    <OPTION value="과학">과학</OPTION>
    <OPTION value="음식">음식</OPTION>
    <OPTION value="스포츠">스포츠</OPTION>
    <OPTION value="동물공감">동물공감</OPTION>
    <OPTION value="패션뷰티">패션뷰티</OPTION>
    <OPTION value="게임">게임</OPTION>
    <OPTION value="연예">연예</OPTION>
    <OPTION value="여행">여행</OPTION>
    <OPTION value="경제">경제</OPTION>
</SELECT>

<hr style="border: 2px solid gray;"/>

<div style="position: relative; left: 400px;">
<div name="ir1" id="summernote"  ></div>
    <script>
      $('#summernote').summernote({
        placeholder: 'Hello bootstrap 4',
        tabsize: 2,
        height: 500,
        width: 1000
      });
            
      function showContent() {
          //$('.output').html($('#summernote').summernote('code'));
          $("input[name=contents]").val($('#summernote').summernote('code'));

          console.log($('#summernote').summernote('code'));
      }
      
    </script>
     
   <input type="hidden" name="contents" >
   <input type="hidden" name="wname" value="<%= member.getName() %>" >
   <input type="hidden" name="timg" value="${filePath}" />

    <input type="submit" value="작성"  onclick="showContent();" style="  border-radius: 40%; width: 80px; height: 40px;     border: 2px solid green;
    background-color: white;
    color: green;
    font-size: 21px;
    text-align: center;
    position: fixed;
    right: 30px;
    bottom: 20px;
    
    "  />
    <div id="summernote"></div>
    <div class="output"></div>
    </div>
 </form>
 <div class="imgcontainer">
    <img src="image/DINNER.png" alt="" />
  </div> 
</body>
</html>