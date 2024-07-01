package com.chainsys.readersrealm.controller;

import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.ui.Model;
import com.chainsys.readersrealm.dao.UserDAO;
import com.chainsys.readersrealm.dao.UserImpl;
import com.chainsys.readersrealm.model.User;

import jakarta.servlet.http.HttpSession;

@Controller
public class MyController {
	
	@Autowired
	UserDAO userDAO;
	UserImpl userImpl;

	@RequestMapping("/")
	public String home() {
		return "home.jsp";
	}
	
	@GetMapping("/register")
    public String saveUser(@RequestParam("Name") String userName,@RequestParam("type") String type,@RequestParam("phonenumber") String phoneNumber, @RequestParam("password") String userPassword,
            @RequestParam("location") String location, @RequestParam("EmailId") String email) throws ClassNotFoundException, SQLException {
        User user = new User();
        user.setUserName(userName);
        user.setPassword(userPassword);
        user.setUserType(type);
        user.setLocation(location);
        user.setPhoneNumber(phoneNumber);
        user.setMailId(email);
        userDAO.saveLibrary(user);
        return "index.jsp";
    }
	
	
	@PostMapping("/login")
    public String loginUser(@RequestParam("EmailId") String emailId,
                            @RequestParam("password") String password,
                            HttpSession session,
                            Model model) throws ClassNotFoundException {
        
        try {
        	User user=new User();
        	user.setMailId(emailId);
        	user.setPassword(password);
            String userType = userDAO.checkPassword(user);
            if (userType != null) {
                session.setAttribute("emailId", emailId);
                
                if (userType.equalsIgnoreCase("admin")) {
                    return "redirect:/adminIndex.jsp";
                } else if (userType.equalsIgnoreCase("user")) {
                    return "redirect:/home.jsp";
                } else if (userType.equalsIgnoreCase("librarian")) {
                    return "redirect:/librarians.jsp";
                }
            } else {
                model.addAttribute("error", "Invalid credentials. Please try again.");
                return "login.html"; 
            }
        } catch (SQLException e) {
            e.printStackTrace();
            model.addAttribute("error", "An error occurred. Please try again later.");
            return "login.html"; 
        }
       
        model.addAttribute("error", "Invalid credentials. Please try again.");
        return "login.html";
    }

	}

