package mainRunner;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.PropertyDAO;
import dao.StateDAO;
import dao.UserDAO;
import models.Property;
import models.State;
import models.User;
public class Runner {

	public static void main(String[] args) throws IOException, SQLException  {
		System.out.println("Hello...");
	
// get user list
//		UserDAO userDAO = new UserDAO();
//		List<User> l = new ArrayList<User>();
//		l = userDAO.getUserList();
//		for(User u : l) System.out.println(u.getUser_name());

		
// get state list
//	 	StateDAO stateDAO= new StateDAO();		
//	 	List<State> l = new ArrayList<State>();
//	 	l = stateDAO.getStateList();
//	 	for (State s : l){
//	 		System.out.println(s.getCode());  
//	 	}

// get property list
	 	PropertyDAO propertyDAO= new PropertyDAO();		
	 	List<Property> l = new ArrayList<Property>();
	 	String admin = "Admin";
	 	l = propertyDAO.getPropertyList("all", "all", "date", admin.equals("Admin"));
	 	for (Property s : l){
	 		System.out.println(s.getProperty_id());  
	 	}
		
	
	 	
	 	
	}
}