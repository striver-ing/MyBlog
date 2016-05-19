package com.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.opensymphony.xwork2.ActionContext;
import com.pojo.Blog;
import com.pojo.User;
import com.service.BlogService;
import com.tools.Constants;
import com.tools.Html;
import com.tools.Timer;

public class BlogServiceImpl extends HibernateDaoSupport implements
		BlogService {
	@Override
	public Blog addBlog(Blog blog) {
		// TODO Auto-generated method stub
		dealOrtherAttribute(blog);
		blog.setReadedCount(0);
		this.getHibernateTemplate().save(blog);
		//取blog 以便得到id
		String hql = "from Blog order by blogId DESC limit 1";
		return (Blog) this.getHibernateTemplate().find(hql).get(0);
	}

	@Override
	public List<Blog> findBlogs(String condition) {
		// TODO Auto-generated method stub
		String hql = "from Blog " + condition;
		List<Blog> blogs = (List<Blog>)this.getHibernateTemplate().find(hql);
		
		return blogs;
	}
	
	@Override
	public Blog findBlogByBlogId(int blogId) {
		// TODO Auto-generated method stub
		Blog blog = (Blog)this.getHibernateTemplate().get(Blog.class, blogId);
		return blog;
	}
	
	@Override
	public Blog readBlog(int blogId) {
		// TODO Auto-generated method stub
		Blog blog = findBlogByBlogId(blogId);
		int readedCount = blog.getReadedCount() == null ? 0 : blog.getReadedCount();
		blog.setReadedCount(readedCount + 1);
		this.getHibernateTemplate().update(blog);
		return blog;
	}
	
	@Override
	public void deleteBlogByBlogId(int blogId) {
		// TODO Auto-generated method stub
		Blog blog = findBlogByBlogId(blogId);
		this.getHibernateTemplate().delete(blog);
	}
	
	@Override
	public Blog updateBlog(Blog blog) {
		// TODO Auto-generated method stub
		dealOrtherAttribute(blog);
		
		this.getHibernateTemplate().update(blog);
		return blog;
	}
	
	
	public void dealOrtherAttribute(Blog blog) {
		// 文章内容
		String content = blog.getContent();

		// 摘要处理
		String abstract_ = blog.getAbstract_();
		if (abstract_ == "" || abstract_.trim().length() == 0) {
			// 取文章前200字作为摘要 或者遇到图片结束 摘要后加...
			abstract_ = Html.removeTag(content); // 去掉html标签
			int endPos = abstract_.length() > 200 ? 200 : abstract_.length();
			abstract_ = abstract_.substring(0, endPos) + "...";
			blog.setAbstract_(abstract_);
		}
		
		//贴图 取文章第一个图片 如果没有 取默认图片
		String imgPath = Html.getImagePath(content);
		if (imgPath == null) {
			imgPath = "images/blog_default.jpg";
		}
		blog.setImgPath(imgPath);
		
		//时间
		blog.setDate(Timer.getDate());
		
		//userId
		//第一种取session中user 的方法
		Map session = (Map)ActionContext.getContext().get("session");
		User user = (User)session.get(Constants.USER);
		//第二种取session中user 的方法
		//HttpSession session=ServletActionContext.getRequest().getSession();
		//User user = (User)session.getAttribute(Constants.USER);
		if (user != null) {
			blog.setUserId(user.getUserId());
		}
	}

}
