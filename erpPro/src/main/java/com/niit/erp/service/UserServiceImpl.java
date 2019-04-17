package com.niit.erp.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.erp.model.User;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private com.niit.erp.dao.UserDAO UserDAO;
	
	
	@Override
	@Transactional
	public User checkUser(User theUser) {
		
		return UserDAO.checkUser(theUser);	
	}

}
