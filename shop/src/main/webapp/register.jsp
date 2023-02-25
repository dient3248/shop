<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<title>Đăng Ký</title>
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

<style type="text/css">
.rq {
	color: red;
}

.red {
	color: red;
}
</style>
</head>

<body>

	<% 
		String showError = request.getAttribute("showError")+"";
		showError = (showError.equals("null"))?"":showError;
		

		String email= request.getAttribute("email")+"";
		email = (email.equals("null"))?"":email;
		
		String hoVaTen= request.getAttribute("hoVaTen")+"";
		hoVaTen = (hoVaTen.equals("null"))?"":hoVaTen;
		
		String tenDangNhap= request.getAttribute("tenDangNhap")+"";	
		tenDangNhap = (tenDangNhap.equals("null"))?"":tenDangNhap;
		
		String soDienThoai= request.getAttribute("soDienThoai")+"";
		soDienThoai = (soDienThoai.equals("null"))?"":soDienThoai;
		
		String gioiTinh= request.getAttribute("gioiTinh")+"";
		gioiTinh = (gioiTinh.equals("null"))?"":gioiTinh;
		
		String ngaySinh= request.getAttribute("ngaySinh")+"";
		ngaySinh = (ngaySinh.equals("null"))?"":ngaySinh;
	%>

	<section class="vh-150 bg-image"
		style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
		<div class="mask d-flex align-items-center h-100 gradient-custom-3">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12 col-md-9 col-lg-7 col-xl-6">
						<div class="card" style="border-radius: 15px;">
							<div class="card-body p-5">
								<h2 class="text-uppercase text-center mb-2 text-primary">Đăng
									Ký Tài Khoản</h2>

								<form action="khach-hang" method="post">
								<input type="hidden" name="action" value="register"/>

									<div class="form-outline mb-2">
										<label class="form-label" for="email">Email</label> <input
											type="email" id="email" name="email"
											class="form-control form-control-md" value="<%=email %>" />
									</div>

									<div class="form-outline mb-2">
										<label class="form-label" for="hoVaTeN">Họ Và Tên</label> <input
											type="text" id="hoVaTen" name="hoVaTen"
											class="form-control form-control-md" value="<%=hoVaTen %>" />
									</div>

									<div class="form-outline mb-2">
										<label class="form-label" for="tenDangNhap">Tên Đăng
											Nhập</label> <input type="text" id="tenDangNhap" name="tenDangNhap"
											class="form-control form-control-md"
											value="<%=tenDangNhap %>" />
									</div>

									<div class="form-outline mb-2">
										<label class="form-label" for="soDT">Số Điện Thoại</label> <input
											type="tel" id="soDT" name="soDT"
											class="form-control form-control-md"
											value="<%=soDienThoai %>" />
									</div>

									<div class="form-outline mb-2">
										<label class="form-label" for="gioiTinh">Giới Tính</label> <select
											class="form-control form-control-md" id="gioiTinh"
											name="gioiTinh">
											<option value="Nam"
												<%=(gioiTinh.equals("Nam"))?"selected='selected'":"" %>>Nam</option>
											<option value="Nữ"
												<%=(gioiTinh.equals("Nữ"))?"selected='selected'":"" %>>Nữ</option>
											<option value="Khác"
												<%=(gioiTinh.equals("Khác"))?"selected='selected'":"" %>>Khác</option>
										</select>
									</div>

									<div class="form-outline mb-2">
										<label class="form-label" for="ngaySinh">Ngày Sinh</label> <input
											type="date" id="ngaySinh" name="ngaySinh"
											class="form-control form-control-md" value="<%=ngaySinh %>" />
									</div>

									<div class="form-outline mb-2">
										<label class="form-label" for="matKhau">Mật Khẩu</label> <input
											type="password" id="matKhau" name="matKhau"
											class="form-control form-control-md" required="required"
											onkeyup="kiemTraMatKhau()" />
									</div>

									<div class="form-outline mb-2">
										<label class="form-label" for="matKhau">Nhập Lại Mật
											Khẩu 
										</label> <input type="password" id="nhapLaiMatKhau"
											name="nhapLaiMatKhau" class="form-control form-control-md"
											required="required" onkeyup="kiemTraMatKhau()" />
											<span id="msg" class="red"></span>
									</div>

									<div class="d-flex justify-content-center mt-4">
										<input type="submit" class="btn btn-primary form-control"
											value="Đăng Ký" />
									</div>

									<p class="text-uppercase text-center mt-3 text-danger red"><%=showError %></p>

									<p class="text-center text-muted mt-4 mb-0">
										Bạn đã có tài khoản? <a href="./login.jsp"
											class="fw-bold text-body"><u>Đăng Nhập</u></a>
									</p>

								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Bootstrap JavaScript Libraries -->
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
	function kiemTraMatKhau(){
		matKhau = document.getElementById("matKhau").value;
		matKhauNhapLai = document.getElementById("nhapLaiMatKhau").value;
		if(matKhau!=matKhauNhapLai){
			document.getElementById("msg").innerHTML = "Mật khẩu không khớp!";
			return false;
		}else{
			document.getElementById("msg").innerHTML = "";
			return true;
		}
	}
</script>
</html>