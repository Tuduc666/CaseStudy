package mainRunner;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.UserDAO;
import models.User;
public class Runner {

	public static void main(String[] args) throws IOException, SQLException  {
		System.out.println("Hello...");
		UserDAO userDAO = new UserDAO();
		List<User> l = new ArrayList<User>();
		
		l = userDAO.getUserList();
		for(User u : l) System.out.println(u.getUser_name());

	}

}