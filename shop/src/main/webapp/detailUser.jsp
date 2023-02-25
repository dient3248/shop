<%@page import="java.sql.Date"%>
<%@page import="model.KhachHang"%>
<%@page import="database.KhachHangDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<title>Thông tin tài khoản</title>
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
	if (obj != null)
		khachHang = (KhachHang) obj;
	if (khachHang == null) {
	%>

	<%
	} else {
	%>
		<%
		String hoVaTen = khachHang.getHoVaTen();
		String tenDangNhap = khachHang.getTenDangNhap();
		String email = khachHang.getEmail();
		String soDT = khachHang.getSoDienThoai();
		Date ngaySinh = khachHang.getNgaySinh();
		String gioiTinh = khachHang.getGioiTinh();
		%>

		<section class="vh-100" style="background-color: #508bfc;">
			<div class="container py-5 h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12 col-md-8 col-lg-6 col-xl-5">
						<div class="card shadow-2-strong" style="border-radius: 1rem;">
							<div class="card-body p-5 text-center">
								<h3 class="mb-5 text-center text-primary">Thông tin tài
									khoản</h3>

								<div class="row">
									<div class="col-4">
										<label for="">Tên Đăng Nhập</label>
									</div>
									<div class="col-8">
										<input type="text" class="form-control" name="tenDangNhap" value="<%=tenDangNhap %>">
									</div>
								</div>

								<div class="row mt-4">
									<div class="col-4">
										<label for="">Họ Và Tên</label>
									</div>
									<div class="col-8">
										<input type="text" class="form-control" name="hoVaTen" value="<%=hoVaTen %>">
									</div>
								</div>

								<div class="row mt-4">
									<div class="col-4">
										<label for="">Giới Tính</label>
									</div>
									<div class="col-8">
										<input type="text" class="form-control" name="gioiTinh" value="<%=gioiTinh %>">
									</div>
								</div>
								
								<div class="row mt-4">
									<div class="col-4">
										<label for="">Ngày Sinh</label>
									</div>
									<div class="col-8">
										<input type="text" class="form-control" name="ngaySinh" value="<%=ngaySinh %>">
									</div>
								</div>
								

								<div class="row mt-4">
									<div class="col-4">
										<label for="">Email</label>
									</div>
									<div class="col-8">
										<input type="text" class="form-control" name="email" value="<%=email %>">
									</div>
								</div>

								<div class="row mt-4">
									<div class="col-4">
										<label for="">Số điện thoại</label>
									</div>
									<div class="col-8">
										<input type="text" class="form-control" name="soDT" value="<%=soDT %>">
									</div>
								</div>
								<div class="mt-4">
									<p class="text-center text-primary">
								<a href="./changePassword.jsp"
										class="fw-bold text-body text-primary "><u> Thay Đổi Mật Khẩu</u></a>
								</p>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>
		</section>
		<%
		}
		%>
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