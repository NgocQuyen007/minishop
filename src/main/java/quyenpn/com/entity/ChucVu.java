package quyenpn.com.entity;


import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name="chucvu")
public class ChucVu {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int machucvu;
	String tenchucvu;
	
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="machucvu")
	Set<NhanVien> nhanviens;
	
	
	public int getMachucvu() {
		return machucvu;
	}
	public void setMachucvu(int machucvu) {
		this.machucvu = machucvu;
	}
	public String getTenchucvu() {
		return tenchucvu;
	}
	public void setTenchucvu(String tenchucvu) {
		this.tenchucvu = tenchucvu;
	}
	
	
	public void setNhanViens(Set<NhanVien> nhanviens){
		this.nhanviens = nhanviens;
	}
	
	public Set<NhanVien> getNhanViens(){
		return this.nhanviens;
	}
	@Override
	public String toString() {
		return "ChucVu [machucvu=" + machucvu + ", tenchucvu=" + tenchucvu +  "]";
	}
	
}
