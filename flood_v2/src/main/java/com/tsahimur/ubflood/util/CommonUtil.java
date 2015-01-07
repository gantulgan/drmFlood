package com.tsahimur.ubflood.util;

import java.util.List;

import com.tsahimur.ubflood.entity.Category;

public class CommonUtil {
	public static List<Category> removeElementById(List<Category> list, int id){
		if ( list != null ){
			Category searchingCat = null;
			for (Category c : list){
				if ( c.getId() == id ){
					searchingCat = c;
					break;
				}
			}
			list.remove(searchingCat);
		}
		
		
		return list;
	}
}
