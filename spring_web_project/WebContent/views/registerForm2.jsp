<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dinner</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

$(function(){
    alert("다음과 같은 이유로 회원가입이 어렵습니다. \n 1.비밀번호가 일치하지 않습니다. \n 2.빈칸이 있습니다. \n 3.아이디가 중복됩니다.");
 });

	function addrfind() {
		new daum.Postcode(
				{
					oncomplete : function(data) {

						var fullAddr = '';
						var extraAddr = '';

						if (data.userSelectedType === 'R') {
							fullAddr = data.roadAddress;

						} else {
							fullAddr = data.jibunAddress;
						}

						if (data.userSelectedType === 'R') {

							if (data.bname !== '') {
								extraAddr += data.bname;
							}

							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}

							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.

						document.getElementById('addrs1').value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_address2").focus();
					}
				}).open();
	}
</script>

<style type="text/css">
* {
	box-sizing: border-box
}

/* Add padding to containers */
.container {
	padding: 16px;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 30%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}



/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit/register button */
.registerbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

#reset {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}

/* Add a blue text color to links */
a {
	color: dodgerblue;
}
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}
</style>
<body>
<div class="imgcontainer">
 <img src="image/DINNER.png" alt="" />
 </div>
	
	<div class="container">
		<h1>회원가입</h1>
		<p>DINNER에 오신걸 환영합니다.당신의 정보를 입력해주세요</p>
		<hr>
		<div id="form">
			<h4>프로필 사진을 등록해주세요</h4>

			<form:form method="post" action="upload.do"
				modelAttribute="uploadFile" enctype="multipart/form-data">
				<input type="file" name="file" id="" />

				<form:errors path="file"></form:errors>

				<input type="submit" value="등록" id="img" />
			</form:form>


		</div>
		<br />

		<div>
			<form action="register.do" method="get">

				<div>
				
					<input type="text" name="name" id="" value=""
						placeholder="성함을 입력해주세요" /><br /> <input type="text" name="id"
						id="" value="" placeholder="ID를 입력해주세요" /><br /> <input
						type="text" name="pw" id="" value="" placeholder="PW를 입력해주세요" /><br />
					<input type="text" name="repw" id="" value=""
						placeholder="비밀번호를 일치시켜 주세요" /><br /> <input type="text"
						name="regisno1" id="" value="" placeholder="주민등록번호 앞자리" />- <input
						type="text" name="regisno2" id="" value=""
						placeholder="주민등록번호 뒷자리"/><br /> <input type="button"
						onclick="addrfind()" value="주소찾기"><br> <input
						type="text" id="addrs1" placeholder="주소" name="addrs1"> <input
						type="text" id="sample6_address2" placeholder="상세주소" name="addrs2">
					<br /> <input type="text" name="email" id=""
						placeholder="EMAIL 을 입력해주세요" /> <br />



					<textarea name="intro" id="" cols="100" rows="10">본인 소개글을 작성해 주시기 바랍니다. </textarea>
					<hr>
					<br /> <input type="hidden" name="img" value="${filePath}" /> <input
						type="reset" value="초기화" id="reset" /> <input type="submit"
						value="회원가입" class="registerbtn" />

					<div></div>
				</div>
			</form>


		</div>
	</div>


</body>
</html>