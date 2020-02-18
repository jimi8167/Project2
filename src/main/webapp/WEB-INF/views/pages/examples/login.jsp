<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 3 | Log in</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="/resources/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- icheck bootstrap -->
<link rel="stylesheet"
	href="/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
</head>
<body class="hold-transition login-page">
<%-- <c:if test="${not empty msg }">
<script>

</script>
</c:if> --%>
	<div class="login-box">
		<div class="login-logo">
			<a href="/"><b>BAND</b></a>
		</div>
		<!-- /.login-logo -->
		<div class="card">
			<div class="card-body login-card-body">
				<p class="login-box-msg">Welcome</p>

				<form action="/user/login" method="post">
					<div class="input-group mb-3">
						<input name="email" type="email" class="form-control"
							placeholder="Email" maxlength="20" required="required"
							value="${cookie.userEmailCookie.value }">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-envelope"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input name="password" type="password" class="form-control"
							required="required" maxlength="12" placeholder="Password">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-8">
							<div class="icheck-primary">

								<c:choose>

									<c:when test="${empty cookie.userEmailCookie.value}">
										<input name="rememberME" type="checkbox" id="remember">
										<label for="remember"> Remember Me </label>
									</c:when>
									
									<c:otherwise>
										<input name="rememberME" type="checkbox" id="remember"
											checked="checked">
										<label for="remember"> Remember Me </label>
									</c:otherwise>
									
								</c:choose>


							</div>
						</div>
						<!-- /.col -->
						<div class="col-4">
							<button type="submit" class="btn btn-primary btn-block">Sign
								In</button>
						</div>
						<!-- /.col -->
					</div>
				</form>

				<div class="social-auth-links text-center mb-3">
					<p>- OR -</p>
					<a href="#" class="btn btn-block btn-primary"> <i
						class="fab fa-facebook mr-2"></i> Sign in using Facebook
					</a> <a href="#" class="btn btn-block btn-danger"> <i
						class="fab fa-google-plus mr-2"></i> Sign in using Google+
					</a>
				</div>
				<!-- /.social-auth-links -->

				<p class="mb-1">
					<a href="forgot-password.jsp">I forgot my password</a>
				</p>
				<p class="mb-0">
					<a href="/user/join" class="text-center">Register a
						new membership</a>
				</p>
			</div>
			<!-- /.login-card-body -->
		</div>
	</div>
	<!-- /.login-box -->

	<!-- jQuery -->
	<script src="/resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/resources/dist/js/adminlte.min.js"></script>
	
	

</body>
</html>