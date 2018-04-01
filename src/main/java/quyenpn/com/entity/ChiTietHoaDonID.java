package quyenpn.com.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class ChiTietHoaDonID implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3688065530317743477L;
	
	int mahoadon;
	int machitietsanpham;
	
	public int getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(int mahoadon) {
		this.mahoadon = mahoadon;
	}
	public int getMachitietsanpham() {
		return machitietsanpham;
	}
	public void setMachitietsanpham(int machitietsanpham) {
		this.machitietsanpham = machitietsanpham;
	}
	
	
}
