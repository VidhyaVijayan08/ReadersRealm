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
	@Autowired
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
	
	@GetMapping("/deleteUser")
    public String deleteUser(HttpServletRequest request, Model model) throws IOException {
        String userIdString = request.getParameter("id");

        if (userIdString != null && !userIdString.isEmpty()) {
            try {
                int userId = Integer.parseInt(userIdString);

                User userToDelete = new User();
                userToDelete.setUserId(userId);

                userImpl.delete(userToDelete);

                List<User> users = userDAO.findUsers();

                model.addAttribute("users", users);
            } catch (NumberFormatException e) {
                System.err.println("Invalid user ID format: " + userIdString);
            }
        } else {
            System.err.println("User ID parameter is missing or empty.");
        }

        return "users.jsp";
    }
	
	@GetMapping("/deletes")
    public String delete(@RequestParam ("id") int id, Model model)
    {
        User users1 = new User();      
        users1.setUserId(id);      
        userImpl.delete(users1); 
        System.out.println("getting datas");
        List<User> users=userDAO.findUsers();
        System.out.println(users);
        model.addAttribute("users",users);
        return "users.jsp";
    }
	
	@GetMapping("/listAllUsers")
    public String listAllUsers(Model model)
    {
        List<User> users=userDAO.findUsers();
        System.out.println(users);
        model.addAttribute("users",users);
        return "users.jsp";
    }
	
	@GetMapping("/listAllLibrarians")
    public String listAllLibrarian(Model model)
    {
        List<User> users=userDAO.findLibrarians();
        System.out.println(users);
        model.addAttribute("users",users);
        return "librarian.jsp";
    }
		 
		 @GetMapping("/updateUser")
		    public String updateUser(HttpServletRequest request, Model model) throws IOException {
		        String mailId = request.getParameter("MailId");
		        String phoneNo = request.getParameter("PhoneNumber");
		        User user = new User();
		        user.setMailId(mailId);
		        user.setPhoneNumber(phoneNo);
		        userDAO.updateUser(user);
				List<User> users = userDAO.retrieveDetails();
				model.addAttribute("users", users);
		        return "users.jsp"; 
		    }
		 
		 @GetMapping("/updateLibrarian")
		    public String updateLibrarian(HttpServletRequest request, Model model) throws IOException {
		        String mailId = request.getParameter("MailId");
		        String phoneNo = request.getParameter("PhoneNumber");
		        User user = new User();
		        user.setMailId(mailId);
		        user.setPhoneNumber(phoneNo);
		        userDAO.updateUser(user);
				List<User> users = userDAO.retrievesDetails();
				model.addAttribute("users", users);
		        return "librarian.jsp"; 
		    }
		}