package com.javatpoint.dao;  
import java.sql.ResultSet;
  
import java.sql.SQLException;  
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.jdbc.core.BeanPropertyRowMapper;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;  
import com.javatpoint.beans.Emp;  
  
public class EmpDao {  
static JdbcTemplate template;  
static HttpServletRequest request;


  
public void setTemplate(JdbcTemplate template) {  
    this.template = template;  
}  
public int save(Emp p){  
	String sql="insert into registration(fname,lname,email,pwd) values('"+p.getfname()+"','"+p.getlname()+"','"+p.getEmail()+"','"+p.getPassword()+"')";      
    return template.update(sql);  
}

public int reset(Emp p){  
	String sql="update registration set pwd='"+p.getPassword()+"' where email = '"+p.getEmail()+"')";      
    return template.update(sql);  
}
public Emp select(Emp p){  
	//String sql = "select * from users where username='" + login.getUsername()
    //+ "'";

//List<User> users = JdbcTemplate.query(sql, new UserMapper());
	String sql="select * from registration where email='"+p.getEmail()+"' and pwd='"+p.getPassword()+"'";      
    //return template.query(sql);
	List<Emp> emp = template.query(sql, new UserMapper());
	if(emp.size()!=0)
	{
		return emp.get(0);
	}
	else
	{
		return null;
	}
}

public int remove(Emp p){  
	String sql="DELETE FROM addcart WHERE email='"+p.getEmail()+"' and id='"+p.getId()+"'";      
    return template.update(sql);  
}

public int contact(Emp p){  
	String sql="insert into contact(name,email,message) values('"+p.getname()+"','"+p.getEmail()+"','"+p.getmessage()+"')";      
    return template.update(sql);  
}
public int cart(Emp p){  
	//HttpSession session = request.getSession();
	//HttpSession session=request.getSession(false); 
	//String n=(String)session.getAttribute("emp");  
	//String emailid = p.get();
	String sql="insert into addcart(item,amount,currency,email) values('"+p.getitem()+"',"+p.getamount()+",'"+p.getcurrency()+"','"+p.getEmail()+"')";      
    return template.update(sql);
    
}
/*public int update(Emp p){  
    String sql="update Emp99 set name='"+p.getName()+"', salary="+p.getSalary()+",designation='"+p.getDesignation()+"' where id="+p.getId()+"";  
    return template.update(sql);  
} */ 
public int finish(Emp p){  
    String sql="delete from addcart where email='"+p.getEmail()+"'";  
    return template.update(sql);  
}  


public Emp getEmpById(String email){  
    String sql="select * from addcart where email=?";  
    return template.queryForObject(sql, new Object[]{email},new BeanPropertyRowMapper<Emp>(Emp.class));  
}  


public static List<Emp> getEmployees(Emp p) {
	// HttpSession session = request.getSession();
     //String emailid = (String)session.getAttribute("emp");
	List<Emp> list =template.query("SELECT * FROM addcart where email='"+p.getEmail()+"'", new RowMapper<Emp>() {

		@Override
		public Emp mapRow(ResultSet rs, int row) throws SQLException {
			Emp x = new Emp();
			x.setId(rs.getInt(1));
			x.setitem(rs.getString(2));
			x.setamount(rs.getInt(3));
			x.setEmail(rs.getString(5));
			
			return x;
		}

	});
	String abc= p.getEmail();
	System.out.println(abc);
	
	return list;
}
/*public List<Emp> getEmployees(){  
    return template.query("select * from registration",new RowMapper<Emp>(){  
        public Emp mapRow(ResultSet rs, int row) throws SQLException {  
            Emp e=new Emp();    
            e.setEmail(rs.getString(3));  
            e.setPassword(rs.getString(4));  
            return e;  
        }  
    });  
} */ 
class UserMapper implements RowMapper<Emp> {

	  public Emp mapRow(ResultSet rs, int arg1) throws SQLException {
	    

	    Emp e=new Emp();    
        e.setEmail(rs.getString(3));  
        e.setPassword(rs.getString(4));  
        return e; 
	  }
}  
}