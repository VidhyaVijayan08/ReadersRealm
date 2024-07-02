package com.chainsys.readersrealm.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.ui.Model;
import com.chainsys.readersrealm.dao.UserDAO;
import com.chainsys.readersrealm.dao.UserImpl;
import com.chainsys.readersrealm.model.Lending;
import com.chainsys.readersrealm.model.User;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	
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
	
	@GetMapping("/listAllUsers")
    public String listAllUsers(Model model)
    {
        User user=new User();
        List<User> users=userDAO.findUsers();
        System.out.println(users);
        model.addAttribute("users",users);
        return "users.jsp";
    }


//	    @PostMapping("/approveBorrower")
//	    public String approveBorrower(
//	            @RequestParam("id") int userId,
//	            @RequestParam("approval") String approval,
//	            Model model) {
//	        
//	        Lending lending = new Lending();
//	        lending.setUserId(userId);
//	        lending.setStatus(approval);
//
//	        userDAO.approveBorrower(lending);
//			List<Lending> list = userDAO.retrieveDetail();
//			model.addAttribute("list", list);
//			return "adminRequestView.jsp";
//	    }

//		@GetMapping("/deleteUser")
//		public String deleteUser(@RequestParam("id") Integer id, Model model) {
//		    userImpl.deleteUser(id);
//			model.addAttribute("message", "User deleted");
//			List<User> list = userImpl.retrieveUsers();
//			model.addAttribute("list1", list);
//			return "index";
//		}
//		
//		 @GetMapping("/search")
//		    public String searchUsers(@RequestParam("Name") String name, Model model) {
//		        try {
//		            List<User> list1 = userImpl.searchUsersByName(name);
//		            model.addAttribute("list1", list1);
//		        } catch (ClassNotFoundException | SQLException e) {
//		            e.printStackTrace(); 
//		        }
//		        return "index"; 
//		    }
//		 
//		 @GetMapping("/updateUser")
//		    public String updateUser(HttpServletRequest request, Model model) throws IOException {
//		        String name = request.getParameter("Name");
//		        String emailId = request.getParameter("EmailId");
//		        String phoneNo = request.getParameter("PhoneNumber");
//		        User user = new User();
//		        user.setUserName(name);
//		        user.setMailId(emailId);
//		        user.setPhoneNumber(phoneNo);
//		        userImpl.updateUser(user);
//				List<User> list1 = userImpl.retrieveDetails();
//				model.addAttribute("list1", list1);
//		        return "index"; 
//		    }
		}

