<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="header.jsp"></jsp:include>
<title>MNS-LOGIN</title>
</head>
<body id="body-login">
	
	<div id="body-flex-login">
		<div id="container-login" class="mt-50">
			<div id="container-login-left">
				<div id="header-top-left" class="heder-login">
					<span id="text-logo" >Welcome</span> <br>
					<span id="hint-text-logo" >Hãy tạo nên phong cách của bạn cùng minishop</span>
				</div>
				<div id="header-bottom-left">
					<p><img alt="icon_oval" src='<c:url value='/resources/images/icon_oval.png'/>' /><span>Luôn cập nhật xu hướng mới nhất</span> </p>
					<p><img alt="icon_oval" src='<c:url value='/resources/images/icon_oval.png'/>' /><span>Giảm hơn 50% tất cả mặt hàng cho khách vip</span> </p>
					<p><img alt="icon_oval" src='<c:url value='/resources/images/icon_oval.png'/>' /><span>Tận tình tư vấn để tạo nên phong cách của bạn</span> </p>
				</div>
			</div>
			<div id="container-login-right">
				<div id="header-top-right" class="heder-login">
					<span class="actived">Đăng nhập</span> / <span>Đăng ký</span>
				</div>
				<div id="container-center-login-right">
					<form action="login" method="POST">
						<input class="material-textinput input-icon-email" name="email" type="text" placeholder="Email"/><br>
						<input class="material-textinput input-icon-password mt-10" name="password" type="password" placeholder="Password"/><br>
						<input class="material-primary-button cursor-pointer" type="submit" value="Đăng nhập" /><br>
					</form>
				</div>
				<p class="actived">${LOGIN_FAIL_MESSAGE}</p>
				
				<div id="container-social-login">
					<img alt="icon_facebook" src='<c:url value='/resources/images/icon_facebook.png'/>' />
					<img alt="icon_google" src='<c:url value='/resources/images/icon_google.png'/>' />
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>