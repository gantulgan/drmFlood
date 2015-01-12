package com.tsahimur.ubflood.dao;

import java.util.List;

import com.tsahimur.ubflood.entity.Post;

public interface PostDao extends GenericDao<Post, Integer> {
	
	public List<Post> getPostsByCategoryId(int id);
	public List<Post> getPostsByRootName(String rootName);
}
