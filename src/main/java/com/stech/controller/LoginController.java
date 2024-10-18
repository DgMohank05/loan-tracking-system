package com.stech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.stech.service.LoginService;

@Controller
@SessionAttributes("name")
public class LoginController {
	
	@Autowired
	LoginService service;
	
	@RequestMapping(value="/home", method= RequestMethod.GET)
	public String viewHomePage(ModelMap map) {
		return "home";
	}
	
	@RequestMapping(value="/login", method= RequestMethod.GET)
	public String viewLoginPage(ModelMap map) {
		return "login";
	}
	@RequestMapping(value="/signup", method= RequestMethod.GET)
	public String viewsignupPage(ModelMap map) {
		return "signup";
	}
	
	
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
    public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password){
 
        boolean isValidUser = service.validateUser(name, password);
 
        if (!isValidUser) {
            model.put("errorMessage", "Access Denied , Invalid Credentials");
            return "login";
        }
 
        model.put("name", name);
        model.put("password", password);
 
        return "welcome";
    }
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
    public String showLogoutPage(ModelMap model){
        return "login";
    }

}
