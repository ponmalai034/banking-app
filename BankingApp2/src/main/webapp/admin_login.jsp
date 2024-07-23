<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login - Banking Application</title>
    <style>
       html,body {
	height: 100%;
	margin: 0;
	font-family: Arial, sans-serif;
}

body.my-login-page { 
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
	font-size: 14px;
	color: #fff;
}

.my-login-page .brand {
	width: 100px;
	height: 100px;
	overflow: hidden;
	border-radius: 50%;
	margin: 40px auto;
	box-shadow: 0 4px 8px rgba(0,0,0,.1);
	position: relative;
	z-index: 1;
}

.my-login-page .brand img {
	width: 100%;
}

.my-login-page .card-wrapper {
	width: 400px;
	margin: auto;
}

.my-login-page .card {
	border: none;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0,0,0,.1);
	background-color: #fff;
	color: #333;
}

.my-login-page .card.fat {
	padding: 20px;
}

.my-login-page .card .card-title {
	margin-bottom: 30px;
	font-weight: bold;
	color: #333;
}

.my-login-page .form-control {
	border-width: 2.3px;
	border-color: #ccc;
	border-radius: 5px;
}

.my-login-page .form-group label {
	width: 100%;
	color: #333;
}

.my-login-page .btn.btn-block {
	padding: 12px 10px;
	background: #9b59b6;
	border: none;
	color: #fff;
	border-radius: 5px;
	font-weight: bold;
}

.my-login-page .btn.btn-block:hover {
	background: #8e44ad;
}

.my-login-page .footer {
	margin: 40px 0;
	color: #888;
	text-align: center;
}

@media screen and (max-width: 425px) {
	.my-login-page .card-wrapper {
		width: 90%;
		margin: 0 auto;
	}
}

@media screen and (max-width: 320px) {
	.my-login-page .card.fat {
		padding: 0;
	}

	.my-login-page .card.fat .card-body {
		padding: 15px;
	}
}
    </style>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Admin Login Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<img src="logo.jpg" alt="logo">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Admin Login</h4>
							<form action="AdminLoginServlet" method="POST">
								<div class="form-group">
									<label for="username">Username</label>
									<input id="username" type="text" class="form-control" name="username" required autofocus>
									<div class="invalid-feedback">
										Username is required
									</div>
								</div>

								<div class="form-group">
									<label for="password">Password
										<a href="" class="float-right">
											Forgot Password?
										</a>
									</label>
									<input id="password" type="password" class="form-control" name="password" required>
								    <div class="invalid-feedback">
								    	Password is required
							    	</div>
								</div>

								<div class="form-group">
									<div class="custom-checkbox custom-control">
										<input type="checkbox" name="remember" id="remember" class="custom-control-input">
										<label for="remember" class="custom-control-label">Remember Me</label>
									</div>
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										Login
									</button>
								</div>
								<div class="mt-4 text-center">
									<a href="choose_role.jsp" style="color: #9b59b6;">Back to choose</a>
								</div>
							</form>
						</div>
					</div>
					
					<div class="footer">
						Copyright &copy; 2024 &mdash; Genpact 
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
