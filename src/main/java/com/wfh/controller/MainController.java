package com.wfh.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wfh.dao.UserDAO;
import com.wfh.dao.UserInfoDAO;
import com.wfh.model.User;
import com.wfh.model.UserInfo;

@Controller
public class MainController {

	@Autowired
	private UserDAO UserDAO;
	@Autowired
	private UserInfoDAO UserInfoDAO;

	@RequestMapping("/")
	public String loadApp() {
		return "index";
	}

	@RequestMapping("/AdminPage")
	public String adminPage() {
		return "AdminPage";
	}

	@RequestMapping("/StudentPage")
	public String studentPage() {
		return "StudentPage";
	}

	@RequestMapping("/TeacherPage")
	public String teacherPage() {
		return "TeacherPage";
	}

	@RequestMapping("/CreateUserPage")
	public String createUserPage() {
		return "CreateUserPage";
	}
	@RequestMapping("/UpdatePage")
	public String updateUserPage(HttpServletRequest request) {
		int id= Integer.parseInt(request.getParameter("ids"));
		UserInfo user = UserInfoDAO.findUserById(id);
		request.setAttribute("u", user);
		return "UpdatePage";
	}

	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if (null!=username  & !username.isEmpty() &  null!=password & !password.isEmpty()) {
			User u = UserDAO.findUser(username, password);
			if (u != null) {
				if (u.getRole_id() == 1) {
					UserInfo user = UserInfoDAO.findUserById(u.getId());
					session.setAttribute("user", user);
					return "AdminPage";
				} else if (u.getRole_id() == 2) {
					return "TeacherPage";
				} else if (u.getRole_id() == 3) {
					return "StudentPage";
				}
			}
		}
		return "index";
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "index";
	}

	@RequestMapping("/list-user")
	public String listUser(HttpServletRequest request) {
		List<UserInfo> listUser = UserInfoDAO.getListUser();
		request.setAttribute("LISTUSER", listUser);
		return "FindPage";
	}

	@RequestMapping("/create-user")
	public String createNewUser(HttpServletRequest request) {
		String username =request.getParameter("username");
		String password =request.getParameter("password");
		String lastname =request.getParameter("lastname");
		String firstname =request.getParameter("firstname");
		String email =request.getParameter("email");
		String role_id =request.getParameter("role_id");
		String phone = request.getParameter("phone");
		String code = request.getParameter("code");
		UserInfoDAO.createUser(code, username, password, email, lastname, firstname, phone, role_id);
		return "AdminPage";
	}

	@RequestMapping("/search-by-id")
	public String searchById(HttpServletRequest request) {
		String searchValue = request.getParameter("searchValue");
		List<UserInfo> listUser = UserInfoDAO.searchUserById(searchValue);
		request.setAttribute("LISTUSER", listUser);
		return "FindPage";
	}
	@RequestMapping("/update-user")
	public String updateUser(HttpServletRequest request) {
		String username =request.getParameter("username");
		String password =request.getParameter("password");
		String lastname =request.getParameter("lastname");
		String firstname =request.getParameter("firstname");
		String email =request.getParameter("email");
		String role_id =request.getParameter("role_id");
		String id = request.getParameter("id");
		UserInfoDAO.updateUserById(username, password, email, lastname, firstname, role_id, id);
		//--------
		List<UserInfo> listUser = UserInfoDAO.getListUser();
		request.setAttribute("LISTUSER", listUser);
		return "FindPage";
	}
	@RequestMapping("/delete-user")
	public String deleteUser(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("ids"));
		UserInfoDAO.deleteUser(id);
		//-------
		List<UserInfo> listUser = UserInfoDAO.getListUser();
		request.setAttribute("LISTUSER", listUser);
		return "FindPage";
	}

}
