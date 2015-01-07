package com.tsahimur.ubflood.contoller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tsahimur.ubflood.component.CategoryEditor;
import com.tsahimur.ubflood.entity.Alert;
import com.tsahimur.ubflood.entity.Category;
import com.tsahimur.ubflood.entity.Post;
import com.tsahimur.ubflood.service.CategoryService;
import com.tsahimur.ubflood.service.PostService;
import com.tsahimur.ubflood.util.AdminUtil;
import com.tsahimur.ubflood.util.CommonUtil;
import com.tsahimur.ubflood.util.Constant;
import com.tsahimur.ubflood.web.forms.LoginForm;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Inject
	CategoryService categoryService;
	@Inject
	PostService postService;
	
	private @Autowired CategoryEditor categoryEditor;
	
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(Category.class, this.categoryEditor);
    }

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home")
	public String homeAdmin(Locale locale, Model model) {
		return "/admin/home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getAdminFrontPage(Model model, HttpSession session) {

		// if not logged jump to login page
		if ( !AdminUtil.isLogged(session) ) return "redirect:login";
		
		// else
		return "/admin/home";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLoginForm(Model model) {
		
		model.addAttribute("loginForm", new LoginForm());
		return "/admin/login";
	}

	// ---------------------- Category functions
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String getCategories(Model model) {
		List<Category> categories = categoryService.getAllCategories();
		model.addAttribute("categories", categories);
		return Constant.PAGE.LIST_CATEGORY;
	}

	@RequestMapping(value = "/category", method = RequestMethod.POST)
	public String postCategoryForm(Model model, @ModelAttribute("category") Category formCategory){
		Category c = categoryService.createCategory(formCategory);
		return "redirect:/admin/category/view/"+c.getId();
	}
	
	@RequestMapping(value = "/category/view/{id}", method = RequestMethod.GET)
	public String getCategoryDetail(@PathVariable int id, Model model){
		Category category = categoryService.getCategoryById(id);
		model.addAttribute( "category", category );
		return Constant.PAGE.VIEW_CATEGORY;
	}
	

	@RequestMapping(value = "/category/edit/{id}", method = RequestMethod.GET)
	public String getCategoryEdit(@PathVariable int id, Model model){
		List<Category> categories = categoryService.getAllCategories();
//		System.out.println("PRE SIZE: " + categories.size());
//		System.out.println("LIST : " + categories);
		categories = CommonUtil.removeElementById(categories, id);
		model.addAttribute("categories", categories);
//		System.out.println("POST SIZE: " + categories.size());
		
		Category category = categoryService.getCategoryById(id);
		if ( category == null ){
			model.addAttribute( "errorMsg", "No category");
			return Constant.PAGE.LIST_CATEGORY; 
		}
		else {
			if ( category.getParent() != null ){
				model.addAttribute( "parentId", category.getParent().getId() );
			}
			model.addAttribute( "category", category );
			return Constant.PAGE.EDIT_CATEGORY;
		}
	}
	
	@RequestMapping(value = "/category/edit", method = RequestMethod.POST)
	public String updateCategory(@ModelAttribute("category") Category formCategory){
		Category c = categoryService.updateCategory(formCategory);
		return "redirect:/admin/category/view/"+c.getId();
	}
	
	@RequestMapping(value = "/category/remove/{id}", method = RequestMethod.GET)
	public String removeCategory(@PathVariable int id, Model model ){
		if ( categoryService.deleteCategoryById(id) ){
			model.addAttribute("info", "Amjilttai ustgalaa");
		}else {
			model.addAttribute("error", "Child Category bolon postgui baih yostoi");
		}
		return Constant.PAGE.RD_LIST_CATEGORY;
	}	
	
	
	//	new 	
	@RequestMapping(value = "/{entity}/new", method = RequestMethod.GET)
	public String newCategory(Model model, @PathVariable String entity){
		StringBuilder redirect = new StringBuilder();
		if ( Constant.Admin.CATEGORY_KEY.equalsIgnoreCase(entity) ){
			List<Category> list = categoryService.getAllCategories();
//			System.out.println(list);
			model.addAttribute("categories", list);
			model.addAttribute("category", new Category());
			redirect.append(Constant.PAGE.ADD_CATEGORY);
		}
		else if ( Constant.Admin.POST_KEY.equalsIgnoreCase(entity) ){
			List<Category> list = categoryService.getAllCategories();
			model.addAttribute("categories", list);
			model.addAttribute("post", new Post());
			redirect.append(Constant.PAGE.ADD_POST);
		}
		else if ( Constant.Admin.ALERT_KEY.equalsIgnoreCase(entity) ){
			model.addAttribute("alert", new Alert());
			redirect.append(Constant.PAGE.ADD_ALERT);
		}
		else {
			redirect.append(Constant.PAGE.ERROR);
		}
		return redirect.toString();
	}
	

	// ---------------------- Post functions
	@RequestMapping(value = "/post", method = RequestMethod.GET)
	public String getPosts(Model model) {
		List<Post> posts = postService.getAllPosts();
		model.addAttribute("posts", posts);
		return Constant.PAGE.LIST_POST;
	}
	
	@RequestMapping(value = "/post", method = RequestMethod.POST)
	public String postPostForm(Model model, @ModelAttribute("post") Post formPost){
		Post p = postService.createPost(formPost);
		return "redirect:/admin/post/view/"+p.getId();
	}
	
	@RequestMapping(value = "/post/view/{id}", method = RequestMethod.GET)
	public String getPostDetail(@PathVariable int id, Model model){
		Post post = postService.getPostById(id);
		model.addAttribute( "post", post );
		return Constant.PAGE.VIEW_POST;
	}
	
	@RequestMapping(value = "/post/edit/{id}", method = RequestMethod.GET)
	public String getPostEdit(@PathVariable int id, Model model){
		System.out.println("POST EDIT ___>   ");
		List<Category> categories = categoryService.getAllCategories();
		model.addAttribute("categories", categories);
		
		Post post = postService.getPostById(id);
		if ( post == null ){
			model.addAttribute( "error", "No post");
			return Constant.PAGE.LIST_POST; 
		}
		else {
			model.addAttribute( "post", post );
			return Constant.PAGE.EDIT_POST;
		}
	}
	
	@RequestMapping(value = "/post/edit", method = RequestMethod.POST)
	public String updatePost(@ModelAttribute("post") Post formPost){
		Post p = postService.updatePost(formPost);
		return "redirect:/admin/post/view/"+p.getId();
	}
	
	@RequestMapping(value = "/post/remove/{id}", method = RequestMethod.GET)
	public String removePost(@PathVariable int id, Model model ){
		postService.deletePostById(id);
		model.addAttribute("info", "Post-g ustgalaa");
		return Constant.PAGE.RD_LIST_POST;
	}
	

	// ---------------------- Post functions
	@RequestMapping(value = "/alert", method = RequestMethod.GET)
	public String getAlert(Model model) {
		
		return Constant.PAGE.LIST_ALERT;
	}
	

}
