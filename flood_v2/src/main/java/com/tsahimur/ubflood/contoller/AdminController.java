package com.tsahimur.ubflood.contoller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tsahimur.ubflood.entity.Category;
import com.tsahimur.ubflood.service.CategoryService;
import com.tsahimur.ubflood.util.AdminUtil;
import com.tsahimur.ubflood.util.Constant;
import com.tsahimur.ubflood.web.forms.LoginForm;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	CategoryService categoryService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home")
	public String homeAdmin(Locale locale, Model model) {
		return "admin/home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getAdminFrontPage(Model model, HttpSession session) {

		// if not logged jump to login page
		if ( !AdminUtil.isLogged(session) ) return "redirect:login";
		
		// else
		return "admin/home";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLoginForm(Model model) {
		
		model.addAttribute("loginForm", new LoginForm());
		return "admin/login";
	}

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String getCategories(Model model) {
		List<Category> categories = categoryService.getAllCategories();
		System.out.println( categories );
		model.addAttribute("categories", categories);
		model.addAttribute("name", "gantulga");
		return "admin/content/categories";
	}

	@RequestMapping(value = "/post", method = RequestMethod.GET)
	public String getPosts(Model model) {
		
		return "admin/content/posts";
	}
	
	@RequestMapping(value = "/alert", method = RequestMethod.GET)
	public String getAlert(Model model) {
		
		return "admin/content/alerts";
	}
	
	@RequestMapping(value = "/category", method = RequestMethod.POST)
	public String postCategoryForm(Model model, Category category){
		if ( category != null ){
			category = new Category();
			category.setNameMon("This is Category!");
		}
		model.addAttribute("category", category);
		
		return "admin/content/category";
	}
	
	@RequestMapping(value = "/{entity}/new", method = RequestMethod.GET)
	public String newCategory(Model model, @PathVariable String entity){
//	public String newCategory(Model model){
		StringBuilder redirect = new StringBuilder();
		if ( Constant.Admin.CATEGORY_KEY.equalsIgnoreCase(entity) ){
			model.addAttribute("category", new Category());
			redirect.append(Constant.PAGE.ADD_CATEGORY);
		}
		else if ( Constant.Admin.POST_KEY.equalsIgnoreCase(entity) ){
			model.addAttribute("category", new Category());
			redirect.append(Constant.PAGE.ADD_POST);
		}
		else if ( Constant.Admin.ALERT_KEY.equalsIgnoreCase(entity) ){
			model.addAttribute("category", new Category());
			redirect.append(Constant.PAGE.ADD_ALERT);
		}
		else {
			redirect.append(Constant.PAGE.ERROR);
		}
		return redirect.toString();
	}
	
}
