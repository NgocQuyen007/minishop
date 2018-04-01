package quyenpn.com.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity(name="sanpham")
public class SanPham {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int masanpham;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="madanhmuc")
	DanhMucSanPham danhMucSanPham;

	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="masanpham")
	Set<ChiTietSanPham> chitietsanphams;
	
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinTable(name="CHITIETKHUYENMAI",
		joinColumns={@JoinColumn(name="masanpham", referencedColumnName="masanpham")},
		inverseJoinColumns={@JoinColumn(name="makhuyenmai", referencedColumnName="makhuyenmai")}
	)
	Set<KhuyenMai> khuyenmais;
	
	String tensanpham;
	String giatien;
	String mota;
	String hinhsanpham;
	
	public DanhMucSanPham getDanhMucSanPham() {
		return danhMucSanPham;
	}
	public void setDanhMucSanPham(DanhMucSanPham danhMucSanPham) {
		this.danhMucSanPham = danhMucSanPham;
	}
	public Set<ChiTietSanPham> getChitietsanphams() {
		return chitietsanphams;
	}
	public void setChitietsanphams(Set<ChiTietSanPham> chitietsanphams) {
		this.chitietsanphams = chitietsanphams;
	}
	public Set<KhuyenMai> getKhuyenmais() {
		return khuyenmais;
	}
	public void setKhuyenmais(Set<KhuyenMai> khuyenmais) {
		this.khuyenmais = khuyenmais;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public String getGiatien() {
		return giatien;
	}
	public void setGiatien(String giatien) {
		this.giatien = giatien;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public String getHinhsanpham() {
		return hinhsanpham;
	}
	public void setHinhsanpham(String hinhsanpham) {
		this.hinhsanpham = hinhsanpham;
	}
	public int getMasanpham() {
		return masanpham;
	}
	public void setMasanpham(int masanpham) {
		this.masanpham = masanpham;
	}
	
}
