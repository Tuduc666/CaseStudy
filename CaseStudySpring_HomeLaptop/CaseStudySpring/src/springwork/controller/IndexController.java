package springwork.controller;

import java.io.IOException;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.UserDAO;
import models.User;

@Controller
public class IndexController {

	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	
//	@RequestMapping(value="/validateLogin", method = RequestMethod.POST)
//	public ModelAndView user_info(
//			@RequestParam("email") String email,
//			@RequestParam("password") String password) throws IOException, SQLException {
//		
//		String returnPage = "userDetailList";
//		ModelAndView mav = null;
//		mav = new ModelAndView(returnPage);  
//		
//		User u = null; u = new User();
//		UserDAO uDAO = null; uDAO = new UserDAO();
//		u = uDAO.isValidUser(email, password);
//		
//		if(u==null) returnPage = "index";
//		else {
//			// HERE!!!!  declare user as a sessionAttribute to be used by all pages
//			if(u.getUser_type().equals("Admin")) returnPage = "adminDetailList";
//			else returnPage = "userDetailList";			
//		}
//
//		return mav;
//	}
	
	// testdata - TamD@yahoo.com  adminp, lee@gmail.com  leep
	@RequestMapping(value="/validateLogin", method = RequestMethod.POST)
	public ModelAndView user_info(
			@RequestParam("email") String email,
			@RequestParam("password") String password) throws IOException, SQLException {
		
		String returnPage = "userDetailList";
		ModelAndView mav = null;
		
		User u = null; u = new User();
		UserDAO uDAO = null; uDAO = new UserDAO();
		u = uDAO.isValidUser(email, password);
		
		if(u==null) returnPage = "index";
		else {
			// HERE!!!!  declare user as a sessionAttribute to be used by all pages
			if(u.getUser_type().equals("Admin")) returnPage = "adminDetailList";
			else returnPage = "userDetailList";			
		}
		
		mav = new ModelAndView(returnPage);  
		return mav;
	}
}
