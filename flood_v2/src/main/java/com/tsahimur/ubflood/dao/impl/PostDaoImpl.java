package com.tsahimur.ubflood.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tsahimur.ubflood.dao.PostDao;
import com.tsahimur.ubflood.entity.Category;
import com.tsahimur.ubflood.entity.Post;

@Repository
public class PostDaoImpl  extends GenericDaoImpl<Post, Integer> implements PostDao {

	public PostDaoImpl() {
		super(Post.class);
	}
	
	@SuppressWarnings("unchecked")
	public List<Post> getPostsByCategoryId(int id) {
		return getEntityManager().createQuery("SELECT x FROM " + getPersistentClass().getSimpleName() + " x WHERE x.category.id = " + id).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Post> getPostsByRootName(String rootName) {
		return getEntityManager().createQuery("SELECT x FROM " + getPersistentClass().getSimpleName() + " x").getResultList();
	}
}
