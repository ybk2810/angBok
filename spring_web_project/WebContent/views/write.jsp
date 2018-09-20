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
</head>
<body>

<%
   Object obj = session.getAttribute("member");
   MemberDTO member = (MemberDTO) obj;
%>

<div id="form">
      <h4>제목 사진을 등록해주세요</h4>

      <form:form method="post" action="upload2.do" modelAttribute="uploadFile" enctype="multipart/form-data">
         <input type="file" name="file" id="" />

         <form:errors path="file"></form:errors>

         <input type="submit" value="등록" id="img" />
      </form:form>
</div>

<form action="writing.do" method="get"> 
<div>제목 : <input type="text" name="title" id="title" /></div>

<SELECT name="category">
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

<div name="ir1" id="summernote"></div>
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

    <input type="submit" value="작성"  onclick="showContent();"  />
    <div id="summernote"></div>
    <div class="output"></div>
 </form> 
</body>
</html>