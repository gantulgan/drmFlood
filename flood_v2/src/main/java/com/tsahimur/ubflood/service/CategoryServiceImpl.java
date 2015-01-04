package com.tsahimur.ubflood.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tsahimur.ubflood.dao.CategoryDao;
import com.tsahimur.ubflood.entity.Category;


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
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteCategory(Category category) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Category> getAllCategories() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Category> getRootCategories() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
