package com.wfh.dao;

import java.util.List;
import com.wfh.model.*;



public interface courseDAO {
	public void createNewCourse(Course theCourse);
	public List<CourseCategory> getListCategories();

	Course getCourseById(int courseId);
	List<Course> searchCourseByCode(String code);
	boolean updateCourse(Course course);
	boolean deleteCourse(int courseId);
}
