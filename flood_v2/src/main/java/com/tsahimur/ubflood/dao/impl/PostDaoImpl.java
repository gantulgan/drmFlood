package com.tsahimur.ubflood.dao.impl;

import org.springframework.stereotype.Repository;

import com.tsahimur.ubflood.dao.PostDao;
import com.tsahimur.ubflood.entity.Post;

@Repository
public class PostDaoImpl  extends GenericDaoImpl<Post, Integer> implements PostDao {

	public PostDaoImpl() {
		super(Post.class);
	}
	

}
