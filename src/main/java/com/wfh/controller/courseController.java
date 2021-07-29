package com.wfh.controller;

import java.util.List;

import javax.validation.Valid;

import com.wfh.dao.impl.UserInfoDAOImpl;
import com.wfh.model.User;
import com.wfh.model.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
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

    @GetMapping("/list")
    public String courseList(@RequestParam(value = "search", defaultValue = "") String searchValue,Model model) {
        List<Course> list  = courseServices.searchCoursesByCode(searchValue);
        List<CourseCategory> courseCategories = courseServices.getCategories();
        model.addAttribute("listCourse", list);
        model.addAttribute("category", courseCategories);
        return "CourseList";
    }
    @GetMapping("/view")
    public String courseDetails(@RequestParam("id") Integer courseId,Model model){
        Course course = courseServices.getCourseById(courseId);
        model.addAttribute("course", course);
        return "CourseDetails";
    }

    @GetMapping("/edit")
    public String editCourse(@RequestParam("id") Integer courseId, Model model){
        Course course = courseServices.getCourseById(courseId);
        return "EditCourse";
    }
    @GetMapping("/delete")
    public String deleteCourse(@RequestParam("id") Integer courseId,Model model){
        return "redirect://course/list";
    }
}
