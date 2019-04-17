package com.niit.erp.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.erp.model.Attendance;


@Repository
public class AttendanceDAOImpl implements AttendanceDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveAttendance(Attendance attendance) {
	System.out.println(attendance);
		Session currentSession = sessionFactory.getCurrentSession();
		Attendance a =new Attendance();
		a.setEid(attendance.getEid());
		a.setA_date(attendance.getA_date());
		currentSession.saveOrUpdate(a);
		
	}

}
