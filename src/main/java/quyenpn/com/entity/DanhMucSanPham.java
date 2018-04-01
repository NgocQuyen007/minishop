package quyenpn.com.entity;


import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name="danhmucsanpham")
public class DanhMucSanPham {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int madanhmuc;
	 
	String tendanhmuc;
	String hinhdanhmuc;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="madanhmuc")
	Set<SanPham> sanphams;
	
	public int getMadanhmuc() {
		return madanhmuc;
	}
	public void setMadanhmuc(int madanhmuc) {
		this.madanhmuc = madanhmuc;
	}
	public String getTendanhmuc() {
		return tendanhmuc;
	}
	public void setTendanhmuc(String tendanhmuc) {
		this.tendanhmuc = tendanhmuc;
	}
	public String getHinhdanhmuc() {
		return hinhdanhmuc;
	}
	public void setHinhdanhmuc(String hinhdanhmuc) {
		this.hinhdanhmuc = hinhdanhmuc;
	}
	public Set<SanPham> getSanphams() {
		return sanphams;
	}
	public void setSanphams(Set<SanPham> sanphams) {
		this.sanphams = sanphams;
	}
}
