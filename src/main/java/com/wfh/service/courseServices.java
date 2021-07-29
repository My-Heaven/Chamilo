package com.wfh.service;

import java.util.List;
import com.wfh.model.Course;
import com.wfh.model.CourseCategory;

public interface courseServices {
		public void createCourse(Course newCourse);
		public 	List<CourseCategory> getCategories ();

		Course getCourseById(int courseId);
		List<Course> searchCoursesByCode(String code);
		boolean updateCourse(Course course);
		boolean deleteCourse(int courseId);
}
