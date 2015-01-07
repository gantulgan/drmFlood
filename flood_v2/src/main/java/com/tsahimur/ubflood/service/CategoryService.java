package com.tsahimur.ubflood.service;

import java.util.List;

import com.tsahimur.ubflood.entity.Category;


public interface CategoryService {

//	public void print();

	public Category getCategoryById(int id);
	public Category createCategory(Category category);
	public Category updateCategory(Category category);
	public void deleteCategory(Category category);
	public boolean deleteCategoryById(int id);
	
	public List<Category> getAllCategories();

	public List<Category> getRootCategories();

}
