package com.wfh.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wfh.dao.courseDAO;
import com.wfh.model.Course;
import com.wfh.model.CourseCategory;
@Service
public class manageCourseService implements courseServices {
	
	@Autowired
	private courseDAO courseDAO ;

	

	@Override
	@Transactional
	public 	List<CourseCategory> getCategories() {
		// TODO Auto-generated method stub
		List<CourseCategory> list = courseDAO.getListCategories();
		return list;
	}
	
	@Override
	@Transactional
	public void createCourse(Course newCourse) {
		courseDAO.createNewCourse(newCourse);;
			
	}

}
