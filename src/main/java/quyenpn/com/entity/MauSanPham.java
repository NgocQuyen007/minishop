package quyenpn.com.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name="mausanpham")
public class MauSanPham {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int mamau;
	
	String tenmau;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="mamau")
	Set<ChiTietSanPham> chitietsanphams;
	
	public int getMamau() {
		return mamau;
	}
	public void setMamau(int mamau) {
		this.mamau = mamau;
	}
	public String getTenmau() {
		return tenmau;
	}
	public void setTenmau(String tenmau) {
		this.tenmau = tenmau;
	}
	
	
}
