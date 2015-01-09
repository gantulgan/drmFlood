package com.tsahimur.ubflood.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tsahimur.ubflood.dao.CategoryDao;
import com.tsahimur.ubflood.entity.Category;

@Repository
public class CategoryDaoImpl extends GenericDaoImpl<Category, Integer> implements CategoryDao {

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
	@SuppressWarnings("unchecked")
	public List<Category> getRootCategory() {
		return getEntityManager().createQuery("SELECT x FROM " + getPersistentClass().getSimpleName() + " x WHERE x.parent IS NULL").getResultList();
	}


}
