package com.tsahimur.ubflood.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tsahimur.ubflood.dao.CategoryDao;
import com.tsahimur.ubflood.entity.Category;
import com.tsahimur.ubflood.service.CategoryService;


@Service
@Transactional
public class CategoryServiceImpl implements CategoryService
{
//	public void print(){System.out.println("Print me");};
	
	@Inject private CategoryDao categoryDao;

	@Override
	public Category createCategory(Category category) {
		return categoryDao.save(category);
	}

	@Override
	public Category updateCategory(Category category) {
		return categoryDao.update(category);
		
	}

	@Override
	public void deleteCategory(Category category) {
		categoryDao.delete(category);
	}

	@Override
	public List<Category> getAllCategories() {
		return categoryDao.findAll();
	}

	@Override
	public List<Category> getRootCategories() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Category getCategoryById(int id) {
		return categoryDao.findById(id);
	}

	@Override
	public boolean deleteCategoryById(int id) {
		Category cat = getCategoryById(id);
		// Ustgahiin tuld child category bolon post-gui bh yostoi
		if ( (cat.getChildCategories() == null || cat.getChildCategories().size() == 0) && ( cat.getPosts() == null || cat.getPosts().size() == 0)){
			categoryDao.delete(cat);
			return true;
		} 
		return false;
	}
	
	
}
