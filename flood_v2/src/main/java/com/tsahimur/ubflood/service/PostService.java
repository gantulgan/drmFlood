package com.tsahimur.ubflood.service;

import java.util.List;

import com.tsahimur.ubflood.entity.Post;

public interface PostService {
	public Post getPostById(int id);
	public Post createPost(Post post);
	public Post updatePost(Post post);
	public void deletePost(Post post);
	public void deletePostById(int id);
	
	public List<Post> getAllPosts();
	public List<Post> getPostsByCategoryId(int id);
	public List<Post> getPostsByRootName(String rootName);
	
}
