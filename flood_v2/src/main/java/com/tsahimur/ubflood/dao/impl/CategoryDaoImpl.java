package com.tsahimur.ubflood.dao.impl;

import org.springframework.stereotype.Repository;

import com.tsahimur.ubflood.dao.CategoryDao;
import com.tsahimur.ubflood.entity.Category;

@Repository
public class CategoryDaoImpl extends GenericDaoImpl<Category, Long> implements CategoryDao {

	public CategoryDaoImpl() {
		super(Category.class);
	}

	@Override
	public boolean checkNameAvailable(String username) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Category loadCategoryByName(String categoryName) {
		// TODO Auto-generated method stub
		return null;
	}

}
