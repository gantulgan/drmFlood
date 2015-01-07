package com.tsahimur.ubflood.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tsahimur.ubflood.dao.PostDao;
import com.tsahimur.ubflood.entity.Post;
import com.tsahimur.ubflood.service.PostService;

@Service
@Transactional
public class PostServiceImpl implements PostService {

	@Inject
	PostDao postDao;
	
	@Override
	public Post getPostById(int id) {
		return postDao.findById(id);
	}

	@Override
	public Post createPost(Post post) {
		return postDao.save(post);
	}

	@Override
	public Post updatePost(Post post) {
		return postDao.update(post);
	}

	@Override
	public void deletePost(Post post) {
		postDao.delete(post);
	}

	@Override
	public void deletePostById(int id) {
		Post p = postDao.findById(id);
		postDao.delete(p);
	}

	@Override
	public List<Post> getAllPosts() {
		return postDao.findAll();
	}

}
