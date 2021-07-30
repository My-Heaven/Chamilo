package com.wfh.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wfh.dao.C_quizDAO;

@Controller
public class TestsController {
	@Autowired
	C_quizDAO C_quizDAO;

	@RequestMapping("/tests")
	public String showTestsPage() {
		return "TestPage";
	}

	@RequestMapping("/create-quiz")
	public String createQuizPage() {
		return "CreateQuizPage";
	}

	@RequestMapping("/saveQuiz")
	public String saveQuiz(HttpServletRequest request) {
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
		if (!randomString.equals("All")) {
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
		if (title != null) {
			C_quizDAO.createQuiz(3, title, type, stuff_answes, random, max_attempt, expired_time);
		}
		return "redirect:/tests";
	}
}
