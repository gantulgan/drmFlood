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
	public void createCategory(Category category) {
		categoryDao.save(category);
	}

	@Override
	public void updateCategory(Category category) {
		categoryDao.update(category);
		
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
	
	
}
