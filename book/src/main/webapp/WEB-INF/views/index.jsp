<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="co" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">

function kakaoLogout(){
	location.href="https://kauth.kakao.com/oauth/logout?client_id=3ecca13d973c6d11e752a114a1e14922&logout_redirect_uri=http://localhost/logout/kakao";
}

</script>
</head>
<body>
	<h1>첫 화면</h1>
	
	<a href="./login">로그인으로 이동</a>
	<br>
	
		<div>
			<button type="submit" onclick="kakaoLogout()">
				카카오계정 로그아웃
			</button>
			<button type="submit" onclick="location.hrdf='./logout'">
				로그아웃
			</button>
		</div>
		
		<div>${sessionScope.mname }님 로그인완</div>
		
	
</body>
</html>