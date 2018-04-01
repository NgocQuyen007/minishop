package quyenpn.com.entity;


import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name="sizesanpham")
public class SizeSanPham {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int masize;
	
	String size;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="masize")
	Set<ChiTietSanPham> chitietsanphams;
	
	public int getMasize() {
		return masize;
	}
	public void setMasize(int masize) {
		this.masize = masize;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	
}
