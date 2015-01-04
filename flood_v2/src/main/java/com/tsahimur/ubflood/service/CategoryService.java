package com.tsahimur.ubflood.service;

import java.util.List;

import com.tsahimur.ubflood.entity.Category;



public interface CategoryService {

//	public void print();
	
	public void createCategory(Category category);
	public void updateCategory(Category category);
	public void deleteCategory(Category category);
	
	public List<Category> getAllCategories();

	public List<Category> getRootCategories();
	
}
