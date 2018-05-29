package utils;

public class OracleQueries {

	public final static String GETPROPERTYBYID = "select * from p_property p "
			+ "join p_salesperson s on p.salesperson_id = s.salesperson_id "  
			+ "where p.property_id = ?";
	
	public final static String GETPROPERTYBYSTATE = "select * from p_property p "
			+ "join p_salesperson s on p.salesperson_id = s.salesperson_id "  
			+ "where p.state_code = ? and p.status = 'Active' order by posted_date";
	public final static String GETPROPERTYBYCITY = "select * from p_property p "
			+ "join p_salesperson s on p.salesperson_id = s.salesperson_id "  
			+ "where p.city_name = ? and p.status = 'Active' order by posted_date";
	public final static String GETALLPROPERTIESACTIVE = "select * from p_property p "
			+ "join p_salesperson s on p.salesperson_id = s.salesperson_id "  
			+ "where p.status = 'Active' order by posted_date";
	public final static String GETALLPROPERTIES = "select * from p_property p "
			+ "join p_salesperson s on p.salesperson_id = s.salesperson_id "  
			+ "order by posted_date";
	
	public final static String GETPROPERTYBYSTATEP = "select * from p_property p "
			+ "join p_salesperson s on p.salesperson_id = s.salesperson_id "  
			+ "where p.state_code = ? and p.status = 'Active' order by asking_price";
	public final static String GETPROPERTYBYCITYP = "select * from p_property p "
			+ "join p_salesperson s on p.salesperson_id = s.salesperson_id "  
			+ "where p.city_name = ? and p.status = 'Active' order by asking_price";
	public final static String GETALLPROPERTIESACTIVEP = "select * from p_property p "
			+ "join p_salesperson s on p.salesperson_id = s.salesperson_id "  
			+ "where p.status = 'Active' order by asking_price";
	public final static String GETALLPROPERTIESP = "select * from p_property p "
			+ "join p_salesperson s on p.salesperson_id = s.salesperson_id "  
			+ "order by asking_price";
	
	public final static String ADDPROPERTY = "insert into p_property "
			+ "(address1,address2,city_name,state_code,zipcode,owner_name,owner_phone,sales_type,property_type,"
			+ "bedrooms,salesperson_id,posted_date,mls_number,asking_price,accepting_price,status,photo_filename) "
			+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	public final static String UPDATEPROPERTY = "update p_property "
			+ "set address1 = ?, address2 = ?, city_name = ?, state_code = ?, zipcode = ?, owner_name = ?, "
			+ "owner_phone = ?, sales_type = ?, property_type = ?, bedrooms = ?, salesperson_id = ?, "
			+ "posted_date = ?, mls_number = ?, asking_price = ?, accepting_price = ?, status = ?, photo_filename = ? "
			+ "where property_id = ?";
	
	public final static String GETSHOWING = "select * from p_requestshowing " 
			+ "where user_id = ? and property_id = ?";
	public final static String ADDSHOWING = "insert into p_requestshowing "
			+ "(user_id,property_id,user_message) "
			+ "values(?,?,?)";
	public final static String UPDATESHOWING = "update p_requestshowing "
			+ "set user_id = ?, property_id = ?, user_message = ? "
			+ "where user_id = ? and property_id = ?";
	public final static String DELETESHOWING = "delete from p_requestshowing "
			+ "where user_id = ? and property_id = ?";
	
	public final static String GETSALESPERSONBYID = "select * from p_salesperson " 
			+ "where salesperson_id = ?";
	public final static String GETALLSALESPERSON = "select * from p_salesperson ";
	public final static String ADDSALESPERSON = "insert into p_salesperson "
			+ "(salesperson_name,phone,email,commission) "
			+ "values(?,?,?,?)";
	public final static String UPDATESALESPERSON = "update p_salesperson "
			+ "set salesperson_name = ?, phone = ?, email = ?, commission = ? "
			+ "where salesperson_id = ?";
	public final static String DELETESALESPERSON = "delete from p_salesperson "
			+ "where salesperson_id = ?";
	
	public final static String GETUSERBYID = "select * from p_user " 
			+ "where user_id = ?";
	public final static String GETALLUSERS = "select * from p_user ";
	public final static String ADDUSER = "insert into p_user "
			+ "(user_name,address1,address2,city_name,state_code,zipcode,phone,email,user_type) "
			+ "values(?,?,?,?,?,?,?,?,?)";
	public final static String UPDATEUSER = "update p_user "
			+ "set user_name=?, address1=?, address2=?, city_name=?, state_code=?, zipcode=?,"
			+ "phone = ?, email = ?, user_type = ? "
			+ "where user_id = ?";
	public final static String DELETEUSER = "delete from p_user "
			+ "where user_id = ?";
	
	
	
	
	
	
	public final static String GETALLINSTRUCTORS = "select * from instructor";
	public final static String GETINSTRUCTORBYEMAIL = "select * from instructor "
			+ "where email = ?";	
	public final static String GETALLCOURSES = "select * from course";
	public final static String GETCOURSESBYINSTRUCTOR = "select c.COURSE_ID,c.COURSE_NAME,c.MINIMUN_GPA from TEACHING t " 
			+ "join COURSE c on t.COURSE_ID = c.COURSE_ID "  
			+ "where t.INSTRUCTOR_ID = ?";

	public final static String GETINSTRUCTORSCOURSES = "select c.COURSE_NAME,c.MINIMUN_GPA,"
			+ "i.FULL_NAME,i.EMAIL from TEACHING t " 
			+ "join COURSE c   on t.COURSE_ID = c.COURSE_ID "    
			+ "join INSTRUCTOR i on t.INSTRUCTOR_ID = i.INSTRUCTOR_ID ";  
	
	public final static String GETSTUDENTCOURSES = "select c.COURSE_NAME,"
			+ "i.FULL_NAME,i.EMAIL from ATTENDING a " 
			+ "join COURSE c   on a.COURSE_ID = c.COURSE_ID "  
			+ "join TEACHING t on a.COURSE_ID = t.COURSE_ID "  
			+ "join INSTRUCTOR i on t.INSTRUCTOR_ID = i.INSTRUCTOR_ID "   
			+ "where a.STUDENT_ID = ?";

	
}

