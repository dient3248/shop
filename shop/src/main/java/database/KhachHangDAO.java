package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.KhachHang;

public class KhachHangDAO {
	
	public int insert(KhachHang t) {
		int result = 0;
			try {
				// Bước 1: tạo kết nối đến CSDL
				Connection con = JDBC.getConnection();

				// Bước 2: tạo ra đối tượng statement
				String sql = "INSERT INTO khachhang (makhachhang, tendangnhap, matkhau, hovaten, gioitinh, ngaysinh, sodienthoai, email) "
						+ " VALUES (?,?,?,?,?,?,?,?)";

				PreparedStatement st = con.prepareStatement(sql);
				st.setString(1, t.getMaKhachHang());
				st.setString(2, t.getTenDangNhap());
				st.setString(3, t.getMatKhau());
				st.setString(4, t.getHoVaTen());
				st.setString(5, t.getGioiTinh());
				st.setDate(6, t.getNgaySinh());
				st.setString(7, t.getSoDienThoai());
				st.setString(8, t.getEmail());

				// Bước 3: thực thi câu lệnh SQL
				result = st.executeUpdate();

				// Bước 4:
				System.out.println("đã thực thi: " + sql);
				System.out.println("Có " + result + " dòng bị thay đổi!");

				// Bước 5:
				JDBC.closeConnection(con);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return result;
	}
	
	public boolean checkTenDangNhap(String tenDangNhap) {
		boolean result = false;
		try {
			// Bước 1: tạo kết nối đến CSDL
			Connection con = JDBC.getConnection();

			// Bước 2: tạo ra đối tượng statement
			String sql = "SELECT * FROM khachhang WHERE tenDangNhap=?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, tenDangNhap);

			// Bước 3: thực thi câu lệnh SQL
			System.out.println(sql);
			ResultSet rs = st.executeQuery();

			// Bước 4:
			while (rs.next()) {
				result = true;
			}

			// Bước 5:
			JDBC.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
	
	
	public KhachHang CheckDangNhap(KhachHang t) {
		KhachHang result = null;
		try {
			// Bước 1: tạo kết nối đến CSDL
			Connection con = JDBC.getConnection();

			// Bước 2: tạo ra đối tượng statement
			String sql = "SELECT * FROM khachhang WHERE tendangnhap=? and matkhau=?";
			PreparedStatement st = con.prepareStatement(sql);
			System.out.println(t.getTenDangNhap()+"/"+t.getMatKhau());
			st.setString(1, t.getTenDangNhap());
			st.setString(2, t.getMatKhau());

			// Bước 3: thực thi câu lệnh SQL
			System.out.println(sql);
			ResultSet rs = st.executeQuery();

			// Bước 4:
			while (rs.next()) {
				String maKhacHang = rs.getString("makhachhang");
				String tenDangNhap = rs.getString("tendangnhap");
				String matKhau = rs.getString("matkhau");
				String hoVaTen = rs.getString("hovaten");
				String gioiTinh = rs.getString("gioitinh");
				Date ngaySinh = rs.getDate("ngaysinh");
				String soDienThoai = rs.getString("sodienthoai");
				String email = rs.getString("email");
				
				result = new KhachHang(maKhacHang, tenDangNhap, matKhau, hoVaTen, gioiTinh, ngaySinh, soDienThoai, email);
			}

			// Bước 5:
			JDBC.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
	
	public KhachHang getChiTietKhachHang(String maKhachHang) {
		Connection con = JDBC.getConnection();
		
		String sql = "SELECT * FROM khachhang WHERE makhachhang = '"+maKhachHang+"'";
		KhachHang kh = new KhachHang();
		try {
			PreparedStatement st = con.prepareStatement(sql);

			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				kh.setMaKhachHang(rs.getString("makhachhang"));
				kh.setTenDangNhap(rs.getString("tendangnhap"));
				kh.setMatKhau(rs.getString("matkhau"));
				kh.setHoVaTen(rs.getString("hovaten"));
				kh.setGioiTinh(rs.getString("gioitinh"));
				kh.setNgaySinh(rs.getDate("ngaysinh"));
				kh.setSoDienThoai(rs.getString("sodienthoai"));
				kh.setEmail(rs.getString("email"));
			}

			// Bước 5:
			JDBC.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return kh;
	}
	
	public boolean changePassword(KhachHang t) {
		int ketQua = 0;
		try {
			// Bước 1: tạo kết nối đến CSDL
			Connection con = JDBC.getConnection();

			// Bước 2: tạo ra đối tượng statement
			String sql = "UPDATE khachhang " + " SET "  + " matkhau=?" + " WHERE makhachhang=?";

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getMatKhau());
			st.setString(2, t.getMaKhachHang());
			// Bước 3: thực thi câu lệnh SQL

			System.out.println(sql);
			ketQua = st.executeUpdate();

			// Bước 4:
			System.out.println("đã thực thi: " + sql);
			System.out.println("Có " + ketQua + " dòng bị thay đổi!");

			// Bước 5:
			JDBC.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ketQua>0;
	}
	
}
