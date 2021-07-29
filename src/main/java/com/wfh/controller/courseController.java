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
    public String courseList(@RequestParam(value = "search", defaultValue = "") String searchValue, Model model, @ModelAttribute("message") String message) {
        List<Course> list = courseServices.searchCoursesByCode(searchValue);
        if (list.size() == 0) {
            list = courseServices.searchCoursesByCode("");
            model.addAttribute("NOTI", "No course is found");
        }
        model.addAttribute("message",message);
        List<CourseCategory> courseCategories = courseServices.getCategories();
        model.addAttribute("listCourse", list);
        model.addAttribute("category", courseCategories);
        return "CourseList";
    }

    @GetMapping("/view")
    public String courseDetails(@RequestParam("id") Integer courseId,
                                Model model, @ModelAttribute("message") final String message) {
        Course course = courseServices.getCourseById(courseId);
        model.addAttribute("NOTI",message);
        model.addAttribute("course", course);
        return "CourseDetails";
    }

    @PostMapping("/update")
    public String updateCourse(@Valid @ModelAttribute("course") Course theCourse,
                               final BindingResult theBindingResult, RedirectAttributes redirectAttributes) {
        System.out.println(theCourse.getId());
        if (theBindingResult.hasErrors()) {
            redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.course",
                    theBindingResult);
            redirectAttributes.addFlashAttribute("course", theCourse);
            redirectAttributes.addAttribute("message","Update Course Error");
            return "redirect:/course/edit" + "?id=" + theCourse.getId();
        } else {
            courseServices.updateCourse(theCourse);
            redirectAttributes.addFlashAttribute("message", "Update Course Successful!");
            return "redirect:/course/view" +  "?id=" + theCourse.getId();

        }
    }

    @GetMapping("/edit")
    public String editCourse(@RequestParam("id") Integer courseId, Model model, @ModelAttribute("message") String message) {
        Course course = courseServices.getCourseById(courseId);
        List<CourseCategory> listCategories = courseServices.getCategories();
        model.addAttribute("categoryList", listCategories);
        model.addAttribute("NOTI",message);
        if (!model.containsAttribute("course")) {
            model.addAttribute("course", course);
        }

        return "EditCourse";
    }

    @GetMapping("/delete")
    public String deleteCourse(@RequestParam("id") Integer courseId, RedirectAttributes redirectAttributes) {
        redirectAttributes.addAttribute("message", "Delete Course Successfully");
        courseServices.deleteCourse(courseId);
        return "redirect://course/list";
    }
}
