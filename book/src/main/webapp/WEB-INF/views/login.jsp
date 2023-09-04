<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link href="css/login.css" rel="stylesheet">
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<script type="text/javascript">

function kakaoLogin(){
	location.href="https://kauth.kakao.com/oauth/authorize?client_id=***REST_API***&redirect_uri=http://localhost/login/kakao&response_type=code"
	//window.open("https://kauth.kakao.com/oauth/authorize?client_id=***REST_API***&redirect_uri=http://localhost/login&response_type=code", "_blank", "width=500, height=500");
	//opner.document.location.href="http://localhost/"
}

	
</script>

</head>
<body>
	<h1>로그인화면</h1>
	<div class="container">
		<div class="login-form">
			<form action="/login" method="post">
				<div class="form-item idBox">
					<label for="id"></label> <input type="text" name="id" id="id"
						placeholder="아이디를 입력하세요">
				</div>
				<div class="form-item pwBox">
					<label for="pw"></label> <input type="password" name="pw" id="pw"
						placeholder="패스워드를 입력하세요">
				</div>
				<div class="form-item saveIDBox">
					<input type="checkbox" id="saveID"> <label for="saveID">아이디
						저장</label>
				</div>
				<div class="form-item saveAllBox">
					<input type="checkbox" id="saveID"> <label for="saveID">자동로그인</label>
				</div>

				<div class="form-item loginBtnBox">
					<button type="submit">로그인</button>
				</div>
			</form>
		</div>

		<div class="login-with">
			<div class="login-with-item kakao">
				<button type="submit" onclick="kakaoLogin()">
					<img src="img/login_kakaoBtn.png" alt="kakaoBtn">
				</button>
			</div>
			<div class="login-with-item naver"></div>
			<div class="login-with-item google"></div>
		</div>
	</div>

</body>
</html>
