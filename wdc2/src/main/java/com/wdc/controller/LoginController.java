package com.wdc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdc.bean.Admin;
import com.wdc.service.AdminService;

@Controller
public class LoginController {
@Autowired
AdminService adminService;
	

@RequestMapping(value="/adminlogin")
public String login3(String account,String password,String power,HttpSession session) {
	System.out.println(account);
	System.out.println(password);
	System.out.println(power);
	Admin admin2 =adminService.checkAdmin2(account,password,power);
	System.out.println(admin2);
	if (admin2!=null){
        session.setAttribute("account", admin2.getAccount());
        session.setAttribute("power", admin2.getPower());
        return "admin/admin";
        
    }
	return"login";
	
}	
@RequestMapping("/logout")
public void logout(HttpSession session,HttpServletRequest request,HttpServletResponse response)throws Exception{
	session.invalidate();
	request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	
}


}
