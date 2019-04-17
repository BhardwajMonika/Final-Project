package com.niit.erp.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.erp.model.Leave;

@Repository
public class LeaveDAOImpl implements LeaveDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveLeave(Leave leave) {
	System.out.println(leave);
		Session currentSession = sessionFactory.getCurrentSession();
		Leave l =new Leave();
		l.setEid(leave.getEid());
		l.setStartdate(leave.getStartdate());
		l.setEnddate(leave.getEnddate());
		currentSession.saveOrUpdate(l);
		
	}

}
