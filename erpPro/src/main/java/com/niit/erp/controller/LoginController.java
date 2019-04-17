package com.niit.erp.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.erp.model.User;
import com.niit.erp.service.UserService;

@Controller
@RequestMapping("/user")
public class LoginController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/loginForm")
	public String showFormForAdd(Model theModel) {
		User theUser = new User();
		theModel.addAttribute("user", theUser);
		return "login-customer";
	}
	
	/*
	 * @RequestMapping(value = "/loginUser", method = RequestMethod.GET) public
	 * ModelAndView processLogin(@RequestParam("email") String
	 * email,@RequestParam("pass") String password,@ModelAttribute User theUser) {
	 * 
	 * User uu=new User(); uu.setEmail(email); uu.setPassword(password); User usr =
	 * userService.checkUser(uu); System.out.println("user is: "+usr);
	 * 
	 * ModelAndView model = null; if (usr == null) { model = new
	 * ModelAndView("login-customer"); model.addObject("error",
	 * "Invalid Username or Password"); } else { model = new
	 * ModelAndView("employeePage"); model.addObject("usr", usr.getEmail()); }
	 * return model; }
	 */
	
	
	
	@RequestMapping(value = "/loginUser", method = RequestMethod.POST)
	public ModelAndView processLogin(@ModelAttribute User theUser) {
		User usr = userService.checkUser(theUser);
		ModelAndView model = null;
		if (usr == null) {
			model = new ModelAndView("login-customer");
			model.addObject("error", "Invalid Username or Password");
		} else {
			model = new ModelAndView("employeePage");
			model.addObject("usr", usr);
			//model.addObject("usr", usr.getEmail());
		}
		return model;
	}
	
}
