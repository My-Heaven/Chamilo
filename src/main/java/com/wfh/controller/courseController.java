package com.wfh.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wfh.model.Course;
import com.wfh.model.CourseCategory;
import com.wfh.service.courseServices;

@Controller
@RequestMapping("/course")
public class courseController {
	@Autowired
	courseServices courseServices;

	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		List<CourseCategory> listCategories = courseServices.getCategories();
		theModel.addAttribute("categoryList", listCategories);
		if (!theModel.containsAttribute("course")) {
			Course theCourse = new Course();
			theModel.addAttribute("course", theCourse);
		}

		return "create_course";
	}

	@PostMapping("/saveCourse")
	public String saveCustomer(@Valid @ModelAttribute("course") final Course theCourse,
			final BindingResult theBindingResult, RedirectAttributes redirectAttributes) {
		if (theBindingResult.hasErrors()) {
			redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.course",
					theBindingResult);
			redirectAttributes.addFlashAttribute("course", theCourse);
			return "redirect:/course/showFormForAdd";
		} else {
			courseServices.createCourse(theCourse);
			redirectAttributes.addFlashAttribute("message", "Create Course Successful!");
			return "redirect:/course/showFormForAdd";

		}
	}

}
