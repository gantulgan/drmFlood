package com.tsahimur.ubflood.dao;

import java.util.List;

import com.tsahimur.ubflood.entity.Category;

public interface CategoryDao extends GenericDao<Category, Integer> {

	/**
	 * Category name avch bolohoor baigaa esehiig shalgana.
	 * 
	 * @param username
	 * @return herew avch boloh bol true, bhgui bol false
	 */
	boolean checkNameAvailable(String username);
	
	public List<Category> getRootCategory();
	/**
	 * Name-r Category-g olno.
	 * 
	 * @param username
	 * @return amjilttai bol 
	 */
	public Category loadCategoryByName(String categoryName);
}
