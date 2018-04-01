package quyenpn.com.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity(name="chitiethoadon")
public class ChiTietHoaDon {

	@EmbeddedId ChiTietHoaDonID chiTietHoaDonID;
	
	int soluong;
	
	String giatien;
	
	public ChiTietHoaDonID getChiTietHoaDonID() {
		return chiTietHoaDonID;
	}
	public void setChiTietHoaDonID(ChiTietHoaDonID chiTietHoaDonID) {
		this.chiTietHoaDonID = chiTietHoaDonID;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public String getGiatien() {
		return giatien;
	}
	public void setGiatien(String giatien) {
		this.giatien = giatien;
	}
	
	
	
	
}
