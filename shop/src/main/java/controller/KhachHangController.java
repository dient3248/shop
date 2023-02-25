package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.KhachHangDAO;
import model.KhachHang;

import util.Encode;



@WebServlet("/khach-hang")
public class KhachHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public KhachHangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String action = request.getParameter("action");
		if(action.equals("log-in")) {
			Login(request, response);
		}else if(action.equals("log-out")) {
			LogOut(request, response);
		}else if(action.equals("register")) {
			Register(request, response);
		}else if(action.equals("change-password")) {
			changePassword(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
//	----------------------hàm đăng Nhập--------------------------//
	private void Login(HttpServletRequest request, HttpServletResponse response) {
		try {
			String tenDangNhap = request.getParameter("tenDangNhap");
			String matKhau = request.getParameter("matKhau");
			matKhau = Encode.SHA1(matKhau);
			
			KhachHang kh = new KhachHang();
			kh.setTenDangNhap(tenDangNhap);
			kh.setMatKhau(matKhau);
			
			KhachHangDAO khd = new KhachHangDAO();
			KhachHang khachHang = khd.CheckDangNhap(kh);
			String url = "";
			if(khachHang!=null) {
				HttpSession	session = request.getSession();
				session.setAttribute("khachHang", khachHang);
//				session.setMaxInactiveInterval(30);
				url = "/home";
			}else {
				request.setAttribute("showErrorLogin", "Tên đăng nhập hoặc mật khẩu không đúng!");
				url = "/login.jsp";
			}
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
//	 -------------------	hàm đăng xuất ---------------------//
	private void LogOut(HttpServletRequest request, HttpServletResponse response) {
		try {
			HttpSession session = request.getSession();
			// Huy bo session
			session.invalidate();
			
			String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
			
			response.sendRedirect(url+"/home");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
// ----------------------- hàm đăng ký tài khoản----------------------//
	private void Register(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			
			String email = request.getParameter("email");
			String hoVaTen = request.getParameter("hoVaTen");
			String tenDangNhap = request.getParameter("tenDangNhap");
			String soDienThoai = request.getParameter("soDT");
			String gioiTinh = request.getParameter("gioiTinh");
			String ngaySinh = request.getParameter("ngaySinh");
			String matKhau = request.getParameter("matKhau");
			String nhapLaiMatKhau = request.getParameter("nhapLaiMatKhau");
			
			request.setAttribute("email", email);
			request.setAttribute("hoVaTen", hoVaTen);
			request.setAttribute("tenDangNhap", tenDangNhap);
			request.setAttribute("soDienThoai", soDienThoai);
			request.setAttribute("gioiTinh", gioiTinh);
			request.setAttribute("ngaySinh", ngaySinh);
			
			String url = "";
			String error = "";
			boolean checkError = false;		
			
			//------------------------đăng ký tài khoản-------------------//	
			KhachHangDAO khachHangDAO = new KhachHangDAO();
			
			if(khachHangDAO.checkTenDangNhap(tenDangNhap)) {
				error += "Tên đăng nhập đã tồn tại.<br/>";
			}
			
			if(!matKhau.equals(nhapLaiMatKhau)) {
				error += "Mật khẩu không khớp.<br/>";
			}else {
				matKhau = Encode.SHA1(matKhau);
			}
			
			request.setAttribute("showError", error);
			
			if(error.length()>0) {
				url = "/register.jsp";
			}else {
				Random random = new Random();
				String id = "KH";
				String maKhachHang = id + random.nextInt(1000) +"";
				KhachHang kh = new KhachHang(maKhachHang, tenDangNhap, matKhau, hoVaTen, gioiTinh, Date.valueOf(ngaySinh), soDienThoai, email);
				
				khachHangDAO.insert(kh);
				url = "/login.jsp";
			}
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
//	----------------------- hàm thay đổi mật khẩu-------------------//
	private void changePassword(HttpServletRequest request, HttpServletResponse response) {
		try {
			String matKhauHienTai = request.getParameter("matKhauHienTai");
			String matKhauMoi = request.getParameter("matKhauMoi");
			String matKhauXacNhan = request.getParameter("matKhauXacNhan");
			
			String matKhauHienTai_Sha1 = Encode.SHA1(matKhauHienTai);
			
			String showError = "";
			String url = "/login.jsp";
			
			// Kiem tra mat khau cu co giong hay khong
			HttpSession session = request.getSession();
			Object obj = session.getAttribute("khachHang");
			KhachHang khachHang = null;
			if (obj!=null)
				khachHang = (KhachHang)obj;		
			
			if(khachHang==null) {
				showError = "Chưa đăng nhập vào hệ thống!";
			}else {
				// Neu khach hang da dang nhap
				if(!matKhauHienTai_Sha1.equals(khachHang.getMatKhau())){
					showError = "Mật khẩu hiện tại không chính xác!";
				}else {
					if(!matKhauMoi.equals(matKhauXacNhan)) {
						showError = "Mật khẩu nhập lại không khớp!";
					}else {
						String matKhauMoi_Sha1 = Encode.SHA1(matKhauMoi);
						khachHang.setMatKhau(matKhauMoi_Sha1);
						KhachHangDAO khd = new KhachHangDAO();
						if(khd.changePassword(khachHang)) {
							showError = "Mật khẩu đã thay đổi thành công!";
						}else {
							showError = "Thay đổi mật khẩu không thành công!";
						}
					}
				}
			}
			
			request.setAttribute("showError", showError);
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
