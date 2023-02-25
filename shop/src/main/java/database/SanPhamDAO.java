package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.LoaiSanPham;
import model.SanPham;

public class SanPhamDAO {

	Connection connection = null;
	PreparedStatement st = null;
	ResultSet rs = null;

	public List<SanPham> getAll() {
		List<SanPham> list = new ArrayList<>();
		String sql = "SELECT * FROM sanpham";
		try {

			connection = JDBC.getConnection();
			st = connection.prepareStatement(sql);
			rs = st.executeQuery();

			while (rs.next()) {
				list.add(new SanPham(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getInt(6), rs.getString(7)));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public SanPham getDetailProductById(String id) {
		String sql = "SELECT * FROM sanpham WHERE masanpahm = ?";
		try {

			connection = JDBC.getConnection();
			st = connection.prepareStatement(sql);
			st.setString(1, id);
			rs = st.executeQuery();

			while (rs.next()) {
				return new SanPham(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getInt(6), rs.getString(7));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<SanPham> getProductByName(String txtSearch) {
		List<SanPham> list = new ArrayList<>();
		String sql = " SELECT * FROM sanpham " + " WHERE tensanpham like ?";
		try {

			connection = JDBC.getConnection();
			st = connection.prepareStatement(sql);
			st.setString(1, "%" + txtSearch + "%");
			rs = st.executeQuery();

			while (rs.next()) {
				list.add(new SanPham(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getInt(6), rs.getString(7)));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	
}
