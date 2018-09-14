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
<body>
	<h3>회원가입창</h3>
	<div>

		<form:form method="post" action="upload.do"
			modelAttribute="uploadFile" enctype="multipart/form-data">
			<input type="file" name="file" id="" value="${filepath }" />

			<form:errors path="file"></form:errors>

			<input type="submit" value="등록" id="img" />
		</form:form>


	</div>

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
					type="text" name="regisno2" id="" value="" placeholder="주민등록번호 뒷자리" /><br />


				<input type="button" onclick="addrfind()" value="주소찾기"><br>
				<input type="text" id="addrs1" placeholder="주소" name="addrs1">
				<input type="text" id="sample6_address2" placeholder="상세주소"
					name="addrs2"> <br /> <input type="text" name="email"
					id="" placeholder="EMAIL 을 입력해주세요" /> <br />
				<textarea name="intro" id="" cols="30" rows="10">본인 소개글을 작성해 주시기 바랍니다. </textarea>
				<br /> <input type="hidden" name="img" value="${filePath}" /> <input
					type="reset" value="초기화" /> <input type="submit" value="회원가입" />

				<div></div>
			</div>
		</form>

	</div>

</body>
</html>