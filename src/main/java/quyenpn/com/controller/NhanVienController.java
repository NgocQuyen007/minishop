package quyenpn.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import quyenpn.com.common.DataModelConstant;
import quyenpn.com.entity.NhanVien;
import quyenpn.com.service.NhanVienService;

@Controller
@RequestMapping(path={"login"})
@SessionAttributes(DataModelConstant.SESSION_ACCOUNT)
public class NhanVienController {
	
	@Autowired
	NhanVienService nhanVienService;
	
	@GetMapping
	public String index(){
		return "login";
	}
	
	@PostMapping
	public String login(String email, String password, ModelMap modelMap){
		NhanVien nhanvien = nhanVienService.login(email, password);
		if(nhanvien != null){
			modelMap.addAttribute(DataModelConstant.SESSION_ACCOUNT, nhanvien);
			return "redirect:/";
		}
		modelMap.addAttribute("LOGIN_FAIL_MESSAGE", DataModelConstant.LOGIN_FAIL_MESSAGE);
		return "login";
	}
}
