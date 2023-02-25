package model;

public class SanPham {
	private String maSanPham;
	private String loaiSanPham;
	private String tenSanPham;
	private int giaBan;
	private String hinhAnh;
	private int soLuong;
	private String moTa;
	
	public SanPham() {
	
	}

	public SanPham(String maSanPham, String loaiSanPham, String tenSanPham, int giaBan, String hinhAnh, int soLuong,
			String moTa) {
		super();
		this.maSanPham = maSanPham;
		this.loaiSanPham = loaiSanPham;
		this.tenSanPham = tenSanPham;
		this.giaBan = giaBan;
		this.hinhAnh = hinhAnh;
		this.soLuong = soLuong;
		this.moTa = moTa;
	}

	public String getMaSanPham() {
		return maSanPham;
	}

	public void setMaSanPham(String maSanPham) {
		this.maSanPham = maSanPham;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public int getGiaBan() {
		return giaBan;
	}

	public void setGiaBan(int giaBan) {
		this.giaBan = giaBan;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	

	public String getLoaiSanPham() {
		return loaiSanPham;
	}

	public void setLoaiSanPham(String loaiSanPham) {
		this.loaiSanPham = loaiSanPham;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	@Override
	public String toString() {
		return "SanPham [maSanPham=" + maSanPham + ", loaiSanPham=" + loaiSanPham + ", tenSanPham=" + tenSanPham
				+ ", giaBan=" + giaBan + ", hinhAnh=" + hinhAnh + ", soLuong=" + soLuong + ", moTa=" + moTa + "]";
	}

}
