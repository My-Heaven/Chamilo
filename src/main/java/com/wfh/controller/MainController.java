package com.wfh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.wfh.dao.userDAO;
import com.wfh.model.user;

@Controller
public class MainController {

	@Autowired
	private userDAO userDAO;

	@RequestMapping("/")
	public String loadApp() {
		return "index";
	}
	@RequestMapping("/login")
	public String login(HttpServletRequest request, Model model) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(username != null & !username.isEmpty() & password != null & !password.isEmpty()) {
			user u = userDAO.findUser(username, password);
			if(u!=null) {
				if(u.getRole_id() == 1) {
					model.addAttribute("user", u);
					return "adminPage";
				}else if(u.getRole_id() == 2){
					return "teacherPage";
				}else if (u.getRole_id() == 3) {
					return "studentPage";
				}
			}
		}
		return "/";
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "index";
	}
}
