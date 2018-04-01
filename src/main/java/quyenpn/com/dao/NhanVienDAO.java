package quyenpn.com.dao;


import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import quyenpn.com.daos.impl.NhanVienImpl;
import quyenpn.com.entity.NhanVien;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class NhanVienDAO implements NhanVienImpl{
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public NhanVien login(String email, String password) {
		NhanVien nhanvien = null;
		Session session = sessionFactory.getCurrentSession();
		String sql =  " FROM nhanvien"
					+ " WHERE email = :email AND matkhau = :password";
		Query sqlQ = session.createQuery(sql);
		sqlQ.setParameter("email", email);
		sqlQ.setParameter("password", password);
		
		try {
			nhanvien = (NhanVien) sqlQ.getSingleResult();
			if(!StringUtils.isEmpty(nhanvien)){
				return nhanvien;
			}
		} catch(Exception ex){}
		return nhanvien;
	}
	
}
