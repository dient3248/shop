<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<title>Thay đổi mật khẩu</title>
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
		Object obj = session.getAttribute("khachHang");
		KhachHang khachHang = null;
		if (obj!=null)
			khachHang = (KhachHang)obj;		
			if(khachHang==null){		
	%>
	<h1>Bạn chưa đăng nhập vào hệ thống. Vui lòng quay lại trang chủ!</h1>
	<%
			}else {
				String showError = request.getAttribute("showError")+"";
				if(showError.equals("null")){
					showError = "";
				}
	%>
	<section class="vh-100" style="background-color: #99f68f;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card shadow-2-strong" style="border-radius: 1rem;">
						<div class="card-body p-5 text-center">
							<form action="khach-hang" method="post">
							<input type="hidden" name="action" value="change-password"/>
								<h3 class="mb-5 text-primary">Thay đổi mật khẩu</h3>
								
								<div class=" mt-4 row">
									<div class="col-5 ">
										<label class="form-label text-center" for="password">Mật
											khẩu hiện tại</label>
									</div>
									<div class="col-7">
										<input type="password" id="passwordOld" name="matKhauHienTai"
											class="form-control form-control-lg"
											 />
									</div>
								</div>

								<div class=" mt-4 row">
									<div class="col-5 ">
										<label class="form-label text-center" for="password">Mật
											khẩu mới</label>
									</div>
									<div class="col-7">
										<input type="password" id="password"name="matKhauMoi"
											class="form-control form-control-lg"
											onkeyup="kiemTraMatKhau()" />
									</div>
								</div>

								<div class=" mt-4 row">
									<div class="col-5">
										<label class="form-label" for="confirmPassword">Xác
											nhận mật khẩu</label>
									</div>
									<div class="col-7">
										<input type="password" id="confirmPassword" name="matKhauXacNhan"
											class="form-control form-control-lg"
											onkeyup="kiemTraMatKhau()" />
									</div>
									<div class="text-center text-danger mt-2">
										<span id="msg"></span>
									</div>
									<div class="text-center text-danger mt-2">
										<%=showError %>
									</div>
								</div>
								<button class="btn btn-primary btn-lg btn-block mt-4"
									type="submit">Đồng ý</button>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%} %>
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

<script>
	function kiemTraMatKhau() {
		matKhau = document.getElementById("password").value;
		matKhauNhapLai = document.getElementById("confirmPassword").value;
		if (matKhau != matKhauNhapLai) {
			document.getElementById("msg").innerHTML = "Mật khẩu không khớp!";
			return false;
		} else {
			document.getElementById("msg").innerHTML = "";
			return true;
		}
	}
</script>

</html>