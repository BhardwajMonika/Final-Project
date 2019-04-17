package com.niit.erp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.erp.dao.LeaveDAO;
import com.niit.erp.model.Leave;

@Service
public class LeaveServiceImpl implements LeaveService {

	@Autowired
	private LeaveDAO leaveDAO;
	
	@Override
	@Transactional
	public void saveLeave(Leave lUser) {
		
		leaveDAO.saveLeave(lUser);
	}

}
