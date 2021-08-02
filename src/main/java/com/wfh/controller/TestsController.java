package com.wfh.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wfh.dao.C_quizDAO;
import com.wfh.model.C_quiz;
import com.wfh.model.UserInfo;

@Controller
public class TestsController {
	@Autowired
	C_quizDAO C_quizDAO;

	@RequestMapping("/tests")
	public String showTestsPage(Model model) {
		List<C_quiz> list = C_quizDAO.getListC_Quiz();
		model.addAttribute("LISTQUIZ", list);
		return "TestPage";
	}

	@RequestMapping("/create-quiz")
	public String createQuizPage() {
		return "CreateQuizPage";
	}

	@RequestMapping("/search-cquiz-by-id")
	public String SearchCquizById(HttpServletRequest request) {
		String searchValue = request.getParameter("searchValue");
		List<C_quiz> list = C_quizDAO.findListC_QuizByID(searchValue);
		request.setAttribute("LISTQUIZ", list);
		return "TestPage";
	}

	@RequestMapping("/saveQuiz")
	public String saveQuiz(HttpServletRequest request, Model model) {
		String title = request.getParameter("title");
		String typeString = request.getParameter("type");
		boolean type;
		if (typeString.equals("true")) {
			type = true;
		} else {
			type = false;
		}
		String randomString = request.getParameter("random");
		int random;
		if (!randomString.equals("all")) {
			random = Integer.parseInt(randomString);
		} else {
			random = 10;
		}
		String stuff_answesString = request.getParameter("stuff_answes");
		boolean stuff_answes;
		if (stuff_answesString.equals("true")) {
			stuff_answes = true;
		} else {
			stuff_answes = false;
		}
		int max_attempt = Integer.parseInt(request.getParameter("max_attempt"));
		int expired_time = Integer.parseInt(request.getParameter("expired_time"));
		String start_time = request.getParameter("start_time");
		if(start_time.trim().isEmpty()) {
			start_time = null;
		}
		String end_time = request.getParameter("end_time");
		if(end_time.trim().isEmpty()) {
			end_time = null;
		}
		if (!title.trim().isEmpty() && title.trim() != null) {
			C_quizDAO.createQuiz(3, title, type, stuff_answes, random, start_time, end_time, max_attempt, expired_time);
			model.addAttribute("msgaddquiz", "Add Success");
		}else {
			model.addAttribute("msgaddquiz", "Add fail");
		}
		
		return "forward:/tests";
	}

	@RequestMapping("/delete-cquiz")
	public String deleteCquiz(HttpServletRequest request, Model model) {
		int id = Integer.parseInt(request.getParameter("ids"));
		C_quizDAO.deleteCquiz(id);
		// -------
		List<C_quiz> list = C_quizDAO.getListC_Quiz();
		model.addAttribute("LISTQUIZ", list);
		return "TestPage";
	}

	@RequestMapping("/UpdateCquizPage")
	public String updateCquizPage(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("ids"));
		C_quiz cquiz = C_quizDAO.findCquizById(id);
		request.setAttribute("c", cquiz);
		return "UpdateQquizPage";
	}

	@RequestMapping("/updateQuiz")
	public String updateUser(HttpServletRequest request, Model model) {
		String title = request.getParameter("title");
		String typeString = request.getParameter("type");
		boolean type;
		if (typeString.equals("true")) {
			type = true;
		} else {
			type = false;
		}
		String randomString = request.getParameter("random");
		int random;
		if (!randomString.equals("all")) {
			random = Integer.parseInt(randomString);
		} else {
			random = 10;
		}
		String stuff_answesString = request.getParameter("stuff_answes");
		boolean stuff_answes;
		if (stuff_answesString.equals("true")) {
			stuff_answes = true;
		} else {
			stuff_answes = false;
		}
		int max_attempt = Integer.parseInt(request.getParameter("max_attempt"));
		int expired_time = Integer.parseInt(request.getParameter("expired_time"));
		String start_time = request.getParameter("start_time");
		String end_time = request.getParameter("end_time");
		if(start_time.trim().isEmpty()) {
			start_time = null;
		}
		if(end_time.trim().isEmpty()) {
			end_time = null;
		}
		String id = request.getParameter("id");
		if (!title.trim().isEmpty() && title.trim() != null) {
			C_quizDAO.updateCquizById(title, type, stuff_answes, random, start_time, end_time, max_attempt,
					expired_time, id);
			model.addAttribute("msgupdatequiz", "Update Success");
		}else {
			model.addAttribute("msgupdatequiz", "Update fail");
		}
		// --------
		List<C_quiz> list = C_quizDAO.getListC_Quiz();
		model.addAttribute("LISTQUIZ", list);
		return "TestPage";
	}
}
