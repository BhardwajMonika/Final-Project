package com.niit.erp.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class MappingController {

	@RequestMapping("/showHome")  
    public String redirect()  
    {  
        return "home";  
    }     
}

