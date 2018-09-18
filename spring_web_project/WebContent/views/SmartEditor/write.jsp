<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/default.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/HuskyEZCreator.js" charset="utf-8"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

<form name="w_form" action="sample.asp" method="post">
<input type="hidden" name="filepath" value="/file"> <!-- 이미지업로드 경로 변수처리 혹은 직접 코딩.. -->
  <p>
    <input type="button" onclick="pasteHTMLDemo()" value="본문에 HTML 삽입"></input>
    <input type="button" onclick="showHTML()" value="본문 HTML 보기"></input>
    <input type="button" onclick="onSubmit()" value="서버에 전송"></input>
  </p>
  <textarea name="ir1" id="ir1" style="width:700px; height:400px"><p>에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 값을 지정하지 않으시면 됩니다.</p></textarea>
  <textarea id="content" name="content" style="display:none"></textarea>
</form>

	<script>
	$(document).ready(function(){


//form변수로 지정하여 이미지업로드 페이지에서 호출하여 사용됨. form.filepath.value
var form = document.w_form;   // 사용할 폼 이름으로 수정.
 
//에디터호출 - <table> 안에 넣으면 안됨.
var oEditors = [];
nhn.husky.EZCreator.createInIFrame(oEditors, "ir1", "SEditorSkin.html", "createSEditorInIFrame", null, true);
 
//이미지삽입 - 업로드 완료페이지에서 호출됨.
function insertIMG(fname){
  var filepath = form.filepath.value;
  var sHTML = "<img src='" + filepath + "/" + fname + "' style='cursor:hand;' border='0'>";  
    // filepath 는 변수처리 혹은 직접 코딩해도 상관없음. 
    // imageUpload.asp 에서 insertIMG 호출시 경로를 포함하여 넣어주는 방법을 추천.
  oEditors.getById["ir1"].exec("PASTE_HTML", [sHTML]);
}
 
function pasteHTMLDemo(){
  sHTML = "<span style='color:#FF0000'>이미지 등도 이렇게 삽입하면 됩니다.</span>";
  oEditors.getById["ir1"].exec("PASTE_HTML", [sHTML]);
}
 
function showHTML(){
  alert(oEditors.getById["ir1"].getIR());
}
 
function onSubmit(){
  // 에디터의 내용을 에디터 생성시에 사용했던 textarea에 넣어 줍니다.
  oEditors.getById["ir1"].exec("UPDATE_IR_FIELD", []);
 
  // 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
  form.content.value = document.getElementById("ir1").value;
 
  if(form.content.value == ""){
    alert("\'내용\'을 입력해 주세요");
    return;
  }
 
  var msg = "전송 하시겠습니까?"
  if(confirm(msg)){
    form.submit();
  }
  return;
}


	});
</script>
</body>
</html>