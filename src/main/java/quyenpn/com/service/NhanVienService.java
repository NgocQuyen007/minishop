package quyenpn.com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import quyenpn.com.dao.NhanVienDAO;
import quyenpn.com.daos.impl.NhanVienImpl;
import quyenpn.com.entity.NhanVien;

@Service
public class NhanVienService implements NhanVienImpl{
	
	@Autowired
	NhanVienDAO nhanVienDAO;
	
	@Override
	public NhanVien login(String email, String password) {
		return nhanVienDAO.login(email, password);
	}
	
}
