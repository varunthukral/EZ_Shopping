package com.jwt.spring;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javatpoint.beans.Emp;
import com.javatpoint.dao.EmpDao;

@Controller
public class LoginController {

	@Autowired  
    EmpDao dao;
	
	@RequestMapping(value = "/checkout",method = RequestMethod.POST)
	public ModelAndView listEmployee(ModelAndView model,@ModelAttribute("emp") Emp emp,HttpSession session) throws IOException {
		//dao.listEmployee(emp);
		List<Emp> listEmp = EmpDao.getEmployees(emp);
		model.addObject("listEmp", listEmp);
		model.setViewName("checkout");
		String xyz = emp.getEmail();
		System.out.println("new "+xyz);
		session.setAttribute("email", emp.getEmail());
		
		return model;
	}
	
	@RequestMapping("/")
	public String welcome(Model model) {
		model.addAttribute("name", "Home Page");
		model.addAttribute("description", "unsecured page !");
		model.addAttribute("command", new Emp());
		return "index";

	}

	@RequestMapping("/admin")
	public String admin(Model model, Principal principal) {

		String loggedInUserName = principal.getName();
		model.addAttribute("user", loggedInUserName);
		model.addAttribute("name", "Spring Security Custom Login Demo");
		model.addAttribute("description", "Protected page !");
		return "admin";
	}

	@RequestMapping(value = "/login")
	public String login(ModelMap model) {
		model.addAttribute("command", new Emp());
		return "login";

	}
	@RequestMapping(value = "/forgetpassword")
	public String forget(ModelMap model) {
		model.addAttribute("command", new Emp());
		return "login";

	}
	
	@RequestMapping(value = "/about")
	public String about(ModelMap model) {

		return "about";

	}
	
	@RequestMapping(value = "/index")
	public String index(ModelMap model) {

		return "index";

	}
	
	@RequestMapping(value = "/beverages")
	public String beverages(ModelMap model) {
		model.addAttribute("command", new Emp());
		return "beverages";

	}
	
/*	@RequestMapping(value = "/checkout")
	public String checkout(ModelMap model) {

		return "checkout";

	}*/
	
	@RequestMapping(value = "/contact")
	public String contact(ModelMap model) {
		model.addAttribute("command", new Emp());
		return "contact";

	}
	
	@RequestMapping(value = "/faq")
	public String faq(ModelMap model) {
		
		return "faq";

	}
	
	@RequestMapping(value = "/gourmet")
	public String gourmet(ModelMap model) {
		model.addAttribute("command", new Emp());
		return "gourmet";

	}
	
	@RequestMapping(value = "/groceries")
	public String groceries(ModelMap model) {
		model.addAttribute("command", new Emp());
		return "groceries";

	}
	
	@RequestMapping(value = "/household")
	public String household(ModelMap model) {
		model.addAttribute("command", new Emp());
		return "household";

	}
	
	@RequestMapping(value = "/offers")
	public String offers(ModelMap model) {
		model.addAttribute("command", new Emp());
		return "offers";

	}
	
	@RequestMapping(value = "/packagedfoods")
	public String packagedfoods(ModelMap model) {
		model.addAttribute("command", new Emp());
		return "packagedfoods";

	}
	
	@RequestMapping(value = "/personalcare")
	public String personalcare(ModelMap model) {
		model.addAttribute("command", new Emp());
		return "personalcare";

	}
	
	@RequestMapping(value = "/products")
	public String products(ModelMap model) {
		model.addAttribute("command", new Emp());
		return "products";

	}
	
	@RequestMapping(value = "/registered")
	public String registered(Model model) {
		model.addAttribute("command", new Emp());
		return "registered";

	}
	
	@RequestMapping(value = "/codes")
	public String codes(ModelMap model) {

		return "codes";

	}
	
	@RequestMapping(value = "/single")
	public String single(ModelMap model) {

		return "single";

	}

	@RequestMapping(value = "/logout")
	public String logout(ModelMap model) {

		model.addAttribute("message",
				"You have successfully logged off from application !");
		return "logout";

	}

	@RequestMapping(value = "/loginError")
	public String loginError(ModelMap model) {
		model.addAttribute("error", "true");
		return "login";

	}
	
	@RequestMapping(value="/save",method = RequestMethod.POST)  
    public String save(@ModelAttribute("emp") Emp emp){  
        dao.save(emp);  
        return "redirect:/registered";//will redirect to viewemp request mapping  
    }
	@RequestMapping(value="/reset",method = RequestMethod.POST)  
    public String reset(@ModelAttribute("emp") Emp emp){  
        dao.save(emp);  
        return "redirect:/login";//will redirect to viewemp request mapping  
    }
	@RequestMapping(value="/select",method = RequestMethod.POST)  
    public String select(@ModelAttribute("emp") Emp emp,HttpSession session){  
        dao.select(emp);  
        session.setAttribute("email", emp.getEmail());
        return "redirect:/";//will redirect to viewemp request mapping  
    }
	@RequestMapping(value="/contact",method = RequestMethod.POST)  
    public String contact(@ModelAttribute("emp") Emp emp){  
        dao.contact(emp);  
        return "redirect:/contact";//will redirect to viewemp request mapping  
    }
	@RequestMapping(value="/remove",method = RequestMethod.POST)
	 public String remove(@ModelAttribute("emp") Emp emp,HttpSession session){  
		//session.setAttribute("emp", emp.getEmail());
			dao.remove(emp);  
			session.setAttribute("email", emp.getEmail());
	        return "redirect:/";//will redirect to viewemp request mapping  
	    }
	@RequestMapping(value="/finish",method = RequestMethod.POST)
	 public String delete(@ModelAttribute("emp") Emp emp,HttpSession session){  
		//session.setAttribute("emp", emp.getEmail());
			dao.finish(emp);  
			session.setAttribute("email", emp.getEmail());
	        return "redirect:/";//will redirect to viewemp request mapping  
	    }
	@RequestMapping(value="/cart",method = RequestMethod.POST)  
    public String cart(@ModelAttribute("emp") Emp emp,HttpSession session,HttpServletRequest request, HttpServletResponse response){  
        dao.cart(emp);  
        session.setAttribute("email", emp.getEmail());
        return "redirect:/";//will redirect to viewemp request mapping  
    }
}
