package com.service;

import java.util.List;

import com.pojo.Blog;

public interface BlogService {
	Blog addBlog(Blog blog);
	List<Blog> findBlogs(String condition);
	Blog findBlogByBlogId(int blogId);
	void deleteBlogByBlogId(int blogId);
	Blog updateBlog(Blog blog);
	Blog readBlog(int blogId);
}
