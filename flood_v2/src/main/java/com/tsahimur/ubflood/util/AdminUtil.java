package com.tsahimur.ubflood.util;

import javax.servlet.http.HttpSession;

public class AdminUtil {
	public static boolean isLogged(HttpSession session){
//		session.getAttribute(Constant.Admin.USER_SESSION_KEY);
		return true;
	} 
}
