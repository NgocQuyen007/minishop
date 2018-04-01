package quyenpn.com.controller;


import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import quyenpn.com.common.DataModelConstant;

@Controller
@RequestMapping("/")
@EnableTransactionManagement
public class TrangChuController {
	
	// Map to entities
	@Autowired
	SessionFactory sessionFactory ;
	
	// Skip open, connect, close connection
	@GetMapping
	public String index(HttpSession httpSession){
		if(httpSession.getAttribute(DataModelConstant.SESSION_ACCOUNT) != null){
			httpSession.setMaxInactiveInterval(20*1000);
			return "index";
		}
		return "login";
	}
	
}
