<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<title>Đăng Nhập</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">

</head>

<body>

	<%
		String showErrorLogin = request.getAttribute("showErrorLogin")+"";
		if(showErrorLogin.equals(null)) {
			showErrorLogin = "";
		}
	%>
	
	<section class="vh-100" style="background-color: #508bfc;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card shadow-2-strong" style="border-radius: 1rem;">
						<div class="card-body p-5 text-center">

							<h3 class="mb-5 text-primary">Đăng Nhập</h3>
							<form action="khach-hang" method="post">
							<input type="hidden" name="action" value="log-in"/>

								<div class="form-outline mb-4">
									<input type="text" id="emailOrPhonenumber" name="tenDangNhap"
										class="form-control form-control-lg" /> <label
										class="form-label" for="typeEmailX-2">Tên Đăng Nhập</label>
								</div>

								<div class="form-outline mb-4">
									<input type="password" id="password" name="matKhau"
										class="form-control form-control-lg" /> <label
										class="form-label" for="typePasswordX-2">Mật Khẩu</label>
								</div>

								<button class="btn btn-primary btn-lg btn-block" type="submit">Đăng
									Nhập</button>
								<p class="text-center text-muted mt-4 mb-0">
								<a href="/changePassword.jsp"
										class="fw-bold text-body "><u>Quên Mật Khẩu</u></a>
								</p>
								<p class="text-uppercase text-center mt-3 text-danger red"><%=showErrorLogin %></p>

								<p class="text-center text-muted mt-4 mb-0">
									Bạn chưa có tài khoản? <a href="./register.jsp"
										class="fw-bold text-body"><u>Đăng Ký</u></a>
								</p>
							</form>


						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous">
  </script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous">
  </script>
</body>

</html>