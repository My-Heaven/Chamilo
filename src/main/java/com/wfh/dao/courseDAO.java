package com.wfh.dao;

import java.util.List;
import com.wfh.model.*;



public interface courseDAO {
	public void createNewCourse(Course theCourse);
	public List<CourseCategory> getListCategories();  
}
