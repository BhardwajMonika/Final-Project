package com.niit.erp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.erp.model.Leave;
import com.niit.erp.service.LeaveService;




@Controller
@RequestMapping("/leave")
public class LeaveController {

	@Autowired
	private LeaveService leaveService;
	
	
	  @GetMapping("/leaveForm") public String showFormForAdd(@RequestParam("employeeId")int theId,Model theModel) 
	  { 
		  Leave leaveUser = new Leave();
	  theModel.addAttribute("id", theId); 
	  theModel.addAttribute("luser", leaveUser);
	  return "leave-form"; 
	  }
	 
	@PostMapping("/saveLeave")
	public String saveLeave(@ModelAttribute("luser") Leave lUser) {
		leaveService.saveLeave(lUser);	
		return "redirect:/employeePage";
	}
}
