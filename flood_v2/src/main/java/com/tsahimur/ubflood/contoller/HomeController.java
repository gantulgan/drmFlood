package com.tsahimur.ubflood.contoller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tsahimur.ubflood.entity.Alert;
import com.tsahimur.ubflood.entity.Category;
import com.tsahimur.ubflood.entity.Post;
import com.tsahimur.ubflood.service.AlertService;
import com.tsahimur.ubflood.service.CategoryService;
import com.tsahimur.ubflood.service.PostService;
import com.tsahimur.ubflood.util.Constant;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * 
	 */
	@Inject
	CategoryService categoryService;
	@Inject
	PostService postService;
	@Inject
	AlertService alertService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy");
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		String strNow = dateFormat.format(now);
		System.out.println(strNow);
		
		Date date = new Date();
		
		try {
			date = formatter.parse(strNow);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/*List<Alert> alerts = alertService.getAlertByDate(date);*/
		List<Category> categories = categoryService.getRootCategories();
		
		/*model.addAttribute("alerts", alerts);*/
		model.addAttribute("categories", categories);
		return "home";
	}
	
	@RequestMapping(value = "/admin1")
	public String homeAdmin(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		return "adminLogin";
	}
	
	@RequestMapping(value = "/mapper", method = RequestMethod.GET)
	public String mapper(Locale locale, Model model) {
		List<Category> categories = categoryService.getRootCategories();
		model.addAttribute("categories", categories);
		return "mapper";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "admin/login";
	}
	
	// ---------------------- post list & view
	@RequestMapping(value = "/category/{id}", method = RequestMethod.GET)
	public String user_getPosts(@PathVariable int id, Model model) {
		List<Post> posts = postService.getPostsByCategoryId(id);
		List<Category> categories = categoryService.getRootCategories();
		
		model.addAttribute("categories", categories);
		model.addAttribute("posts", posts);
		return Constant.PAGE.USER_LIST_POST;
	}
	/*@RequestMapping(value = "/{rootName}", method = RequestMethod.GET)
	public String user_getPostByRootCategory(@PathVariable String rootName, Model model) {
		List<Post> posts = postService.getPostsByRootName(rootName);
		List<Category> categories = categoryService.getRootCategories();
		
		model.addAttribute("categories", categories);
		model.addAttribute("posts", posts);
		return Constant.PAGE.USER_LIST_POST;
	}*/
	@RequestMapping(value = "/content/{id}", method = RequestMethod.GET)
	public String user_getPostDetail(@PathVariable int id, Model model){
		Post post = postService.getPostById(id);
		List<Category> categories = categoryService.getRootCategories();
		
		model.addAttribute("categories", categories);
		model.addAttribute( "post", post );
		return Constant.PAGE.USER_VIEW_POST;
	}
}