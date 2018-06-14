package springwork.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.SalespersonDAO;
import dao.UserDAO;
import models.Salesperson;
import models.User;

@Controller
public class IndexController {

	@RequestMapping("/")      // call login view at the beginning
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
	
	@RequestMapping("reLogin")      // call login view after logged out
	public ModelAndView relogin() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
	
	// testdata - TamD@yahoo.com  adminp, lee@gmail.com  leep
	@PostMapping("/validateLogin")      // called from login view, validate login, call detail list
	public ModelAndView user_info(
			@RequestParam("email") String email,
			@RequestParam("password") String password) throws IOException, SQLException {
		
		String returnPage = "login";
		ModelAndView mav = null;
		
		User u = null; u = new User();
		UserDAO uDAO = null; uDAO = new UserDAO();
		u = uDAO.isValidUser(email, password); 
		
		if(u==null) returnPage = "login";
		else {
			if(u.getUser_type().equals("Admin")) returnPage = "adminDetailList";
			else returnPage = "userDetailList";
		}
		
		mav = new ModelAndView(returnPage);  
		mav.addObject("user", u);           // the returnPage will make the user a session variable
		mav.addObject("city", "all");           
		mav.addObject("state", "all");           
		mav.addObject("order", "date");           
		return mav;
	}
			
	@GetMapping("/userDetailList")          // called from userDetailList menu bar selection, call userDetailList
	public ModelAndView userDetailList(
			@RequestParam("city") String city,
			@RequestParam("state") String state,
			@RequestParam("order") String order) {
		ModelAndView mav = new ModelAndView("userDetailList");
		mav.addObject("city", city);           
		mav.addObject("state", state);           
		mav.addObject("order", order);  
		return mav;
	}
	
	@GetMapping("/adminDetailList")          // called from adminDetailList menu bar selection, call adminDetailList
	public ModelAndView adminDetailList(
			@RequestParam("city") String city,
			@RequestParam("state") String state,
			@RequestParam("order") String order) {
		ModelAndView mav = new ModelAndView("adminDetailList");
		mav.addObject("city", city);           
		mav.addObject("state", state);           
		mav.addObject("order", order);  
		return mav;
	}
	
	@GetMapping("/userUpdateProfile")   // called from userDetailList menu bar update profile button, call userUpdateProfile view
	public ModelAndView userUpdateProfile() {	
		ModelAndView mav = new ModelAndView("userUpdateProfile");
		return mav;
	}
	
	@GetMapping("/adminUpdateProfile")   // called from userDetailList menu bar update profile button, call userUpdateProfile view
	public ModelAndView adminUpdateProfile() {	
		ModelAndView mav = new ModelAndView("adminUpdateProfile");
		return mav;
	}
	
	@PostMapping("/userUpdateSQL")      // called from userUpdateProfile view, update SQL, call userDetailList
	public ModelAndView userUpdateSQL(@ModelAttribute User u) throws IOException, SQLException {	
		UserDAO userDAO = new UserDAO();
//		Integer userid = u.getUser_id();
//		String name = u.getUser_name();
//		String type = u.getUser_type();
//		String pass = u.getUser_password();
//		userDAO.updateUser(3, "Bruce Lee", "404 Lex", "", "Rego Park", "NY", 
//				"11374", "666-666-6666", "lee@gmail.com", "Customer", "leep");
		userDAO.updateUser(u.getUser_id(), u.getUser_name(), u.getAddress1(), u.getAddress2(), u.getCity(), u.getState(), 
				u.getZip(), u.getPhone(), u.getEmail(), u.getUser_type(), u.getUser_password());
		
		ModelAndView mav = new ModelAndView("userDetailList");
		mav.addObject("user", u);          
		mav.addObject("city", "all");           
		mav.addObject("state", "all");           
		mav.addObject("order", "date");    
		return mav;
	}
	
	@PostMapping("/adminUpdateSQL")      // called from userUpdateProfile view, update SQL, call userDetailList
	public ModelAndView adminUpdateSQL(@ModelAttribute User u) throws IOException, SQLException {	
		UserDAO userDAO = new UserDAO();
		userDAO.updateUser(u.getUser_id(), u.getUser_name(), u.getAddress1(), u.getAddress2(), u.getCity(), u.getState(), 
				u.getZip(), u.getPhone(), u.getEmail(), u.getUser_type(), u.getUser_password());
		
		ModelAndView mav = new ModelAndView("adminDetailList");
		mav.addObject("user", u);          
		mav.addObject("city", "all");           
		mav.addObject("state", "all");           
		mav.addObject("order", "date");    
		return mav;
	}
	
	@GetMapping("/logout")   // called from userDetailList menu bar logout button, call logout view
	public String logout() {	
		return "logout";
	}
	
	//---------- SALESPERSONS MAINTENANCE -------------------------------
	@GetMapping("/salesDetailList")   // called from adminDetailList menu bar, call salesDetailList view
	public ModelAndView salesDetailList() {	
		ModelAndView mav = new ModelAndView("salesDetailList");
		return mav;
	}
	
	@GetMapping("/addSalesperson")   // called from adminDetailList menu bar, call salesDetailList view
	public ModelAndView addSalesperson() {	
		ModelAndView mav = new ModelAndView("addSalesperson");
		return mav;
	}
	
	@PostMapping("/addSalesSQL")      // called from addSalesperson view, insert into SQL, call salesDetailList
	public ModelAndView addSalesSQL(@ModelAttribute Salesperson s) throws IOException, SQLException {	
		SalespersonDAO sDAO = new SalespersonDAO();
		
//		Integer userid = u.getUser_id();
		String name = s.getName();
		String phone = s.getPhone();
		String email = s.getEmail();
		Double comm = s.getComm();

		
		sDAO.addSalesperson(s.getName(), s.getPhone(), s.getEmail(), s.getComm());
		// sDAO.addSalesperson("aaa", "222", "aaa@gmail.com", (double) 2.25);
		
		ModelAndView mav = new ModelAndView("salesDetailList");   
		return mav;
	}
	
	@GetMapping("/updateSalesperson")   // called from userDetailList menu bar update profile button, call updateSalesperson view
	public ModelAndView updateSalesperson() {
		// here need to pass in salesperson id and retrieve salesperson here
		// pass it to updateSalesperson
		ModelAndView mav = new ModelAndView("updateSalesperson");
		return mav;
	}
}