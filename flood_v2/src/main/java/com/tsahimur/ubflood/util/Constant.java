package com.tsahimur.ubflood.util;

public final class Constant {
	public final class Admin{
		public static final String USER_SESSION_KEY = "";
		public static final String CATEGORY_KEY = "category";
		public static final String POST_KEY = "post";
		public static final String ALERT_KEY = "alert";
	}

	public final class PAGE{
		public static final String ADD_CATEGORY = "/admin/content/addCategory";
		public static final String EDIT_CATEGORY = "/admin/content/editCategory";
		public static final String VIEW_CATEGORY = "/admin/content/category";
		public static final String LIST_CATEGORY = "/admin/content/categories";

		public static final String ADD_POST = "/admin/content/addPost";
		public static final String EDIT_POST = "/admin/content/editPost";
		public static final String VIEW_POST = "/admin/content/post";
		public static final String LIST_POST = "/admin/content/posts";

		public static final String ADD_ALERT = "/admin/content/addAlert";
		public static final String EDIT_ALERT = "/admin/content/editAlert";
		public static final String VIEW_ALERT = "/admin/content/alert";
		public static final String LIST_ALERT = "/admin/content/alerts";
		
		public static final String LIST_FILES = "/admin/content/files";
		public static final String UPLOAD_FILES = "/admin/upload";
		public static final String DOWNLOAD_FILES = "/admin/download";
		
		public static final String ERROR = "/admin/error";
		
		// RD is for REDIRECT
		public static final String RD_LIST_CATEGORY = "redirect:/admin/category";
		public static final String RD_LIST_POST = "redirect:/admin/post";
		public static final String RD_LIST_ALERT = "redirect:/admin/alert";
		public static final String RD_LIST_FILES = "redirect:/admin/files";
		
		//USER PAGES
		public static final String USER_LIST_POST = "content";
		public static final String USER_VIEW_POST = "contentDetail";
	}
	
	
}
