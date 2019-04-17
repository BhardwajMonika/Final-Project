 package com.niit.erp.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.erp.model.Employee;
import com.niit.erp.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/list")
	public String listEmployees(Model theModel) {
		List<Employee> theEmployees = employeeService.getEmployees();
		theModel.addAttribute("Employees", theEmployees);
		return "view";
	}
	
	@GetMapping("/showForm")
	public String showFormForAdd(Model theModel) {
		Employee theEmployee = new Employee();
		theModel.addAttribute("Employee", theEmployee);
		return "registration";
	}
	
	@PostMapping("/saveEmployee")
	public String saveEmployee(@ModelAttribute("employee") Employee theEmployee) {
		employeeService.saveEmployee(theEmployee);	
		//return "redirect:/employee/list";
		return "redirect:/admin/adminlogin";
		//return "registration";
	}
	
	@GetMapping("/registrationForm")
	public String showFormRegistration(@RequestParam("EmployeeId") int theId, Model theModel) {
		Employee theEmployee = employeeService.getEmployee(theId);	
		theModel.addAttribute("Employee", theEmployee);
		return "registration";
	}
	
	@GetMapping("/delete")
	public String deleteEmployee(@RequestParam("EmployeeId") int theId) {
		employeeService.deleteEmployee(theId);
		return "redirect:/employee/list";
	}
	
	
	
	@GetMapping("/updateForm")
	public String showFormUpdate(@RequestParam("EmployeeId") int theId, Model theModel) {
		Employee theEmployee = employeeService.getEmployee(theId);	
		theModel.addAttribute("Employee", theEmployee);
		//return "registration";
		return "updateForm";
		
	}
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(Model model) {
        return "logout";
    }
	
	
}