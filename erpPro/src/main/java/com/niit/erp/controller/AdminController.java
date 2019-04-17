package com.niit.erp.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.niit.erp.model.Admin;


@Controller
@RequestMapping("/admin")
public class AdminController {
	

  @RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
  public String init(Model model) {
    model.addAttribute("msg", "Please Enter Your Login Details");
    return "login";
  }

  
  @RequestMapping(value = "/adminView" , method = RequestMethod.GET)
  public String submit(Model model, @ModelAttribute("admin") Admin admin) {
    if (admin != null && admin.getEmail() != null & admin.getPassword() != null) {
      if (admin.getEmail().equals("admin@gmail.com") && admin.getPassword().equals("admin123")) {
        model.addAttribute("msg", admin.getEmail());
        return "adminPage";
      } else {
        model.addAttribute("error", "Invalid Details");
        return "login";
      }
    } else {
      model.addAttribute("error", "Please enter Details");
      return "login";
    }
  }

  
  @RequestMapping(value = "/logout", method = RequestMethod.GET)
  public String logout(Model model) {
      return "logout";
  }
	

  
  

}