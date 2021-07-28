package com.wfh.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wfh.dao.courseDAO;
import com.wfh.model.Course;
import com.wfh.model.CourseCategory;

@Repository
public class manageCourseDAO implements courseDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void createNewCourse(Course theCourse) {
		Session currentSession = sessionFactory.getCurrentSession();

		// save/upate the customer ... finally LOL
		currentSession.saveOrUpdate(theCourse);

	}

	@Override
	public List<CourseCategory> getListCategories() {
		Session currentSession = sessionFactory.getCurrentSession();
		List<CourseCategory> categories = currentSession.createQuery("FROM CourseCategory",CourseCategory.class).getResultList();
		
		return categories;
		
	}

}
