package com.wfh.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wfh.dao.courseDAO;
import com.wfh.model.Course;
import com.wfh.model.CourseCategory;

import javax.persistence.TypedQuery;

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
        List<CourseCategory> categories = currentSession.createQuery("FROM CourseCategory", CourseCategory.class).getResultList();

        return categories;

    }

    @Override
    public Course getCourseById(int courseId) {
        Transaction transaction = null;
        Course course = null;
        try (Session currentSession = sessionFactory.openSession()) {
            transaction = currentSession.beginTransaction();
            course = currentSession.get(Course.class, courseId);
            currentSession.getTransaction().commit();
        } catch (Exception e) {
            if (transaction != null)
                transaction.rollback();
        }
        return course;
    }

    @Override
    public List<Course> searchCourseByCode(String searchValue) {
        Transaction transaction=null;
        List<Course> list = null;
       try (Session session = sessionFactory.openSession();){
            transaction= session.beginTransaction();
            Query<Course> query = session.createQuery("SELECT c FROM Course c WHERE c.status = true AND (c.code LIKE :code OR c.title LIKE :title)",Course.class);
            query.setParameter("code", "%" + searchValue + "%");
            query.setParameter("title", "%" + searchValue + "%");
                list = query.getResultList();
            transaction.commit();

       }catch (Exception e){
           e.printStackTrace();
       }
        return list;
    }

    @Override
    public boolean updateCourse(Course course) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            Course courseDB = session.get(Course.class, course.getId());
            courseDB.setCode(course.getCode());
            courseDB.setTitle(course.getTitle());
            courseDB.setCategory_id(course.getCategory_id());
            session.saveOrUpdate(courseDB);
            transaction.commit();

        }catch (Exception e){
            if(transaction != null){
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public boolean deleteCourse(int courseId) {
        boolean result = false;
        Transaction transaction = null;
        try (Session currentSession = sessionFactory.openSession()) {
            transaction = currentSession.beginTransaction();
            Course course = currentSession.get(Course.class, courseId);
            if (course != null) {
                course.setStatus(false);
                currentSession.update(course);
                result = true;
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            return false;
        }
        return result;
    }

}
