package com.niit.erp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.erp.model.Attendance;

import com.niit.erp.service.AttendanceService;

@Controller
@RequestMapping("/attendance")
public class AttendanceController {

	@Autowired
	private AttendanceService attendanceService;
	
	
	  @GetMapping("/attendanceForm") public String showFormForAdd(@RequestParam("employeeId")int theId,Model theModel) 
	  { 
		  Attendance AttendanceUser = new Attendance();
	  theModel.addAttribute("id", theId); 
	  theModel.addAttribute("auser", AttendanceUser);
	  return "attendance-form"; 
	  }
	 
	@PostMapping("/saveAttendance")
	public String saveAttendance(@ModelAttribute("auser") Attendance aUser) {
		attendanceService.saveAttendance(aUser);	
		return "redirect:/employeePage";
	}
}
