package com.niit.erp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.erp.dao.AttendanceDAO;
import com.niit.erp.model.Attendance;

@Service
public class AttendanceServiceImpl implements AttendanceService {

	@Autowired
	private AttendanceDAO attendanceDAO;
	
	@Override
	@Transactional
	public void saveAttendance(Attendance aUser) {
		
		attendanceDAO.saveAttendance(aUser);
	}

}