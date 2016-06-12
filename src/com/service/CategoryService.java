package com.service;

import java.util.List;

public interface CategoryService {
	/*
	 * @param articleId 文章id（博客／日记／随笔）
	 * @param articleTypes 文章分类
	 * @param articleAttribute 文章属性（博客／日记／随笔）根据这个 存对应的表
	 */
	void addArticleTypes(int articleId, String articleTypes, String articleAttribute);
	List findCategorys(String articleAttribute);
	void deleteCategoryByArticleType(String articleType, String articleAttribute);
	void updateCategory(Object category, String articleAttribute);
	Object findCategoryByCategoryId(int categoryId, String articleAttribute);
	
	List findArticlesByArticleType(int categoryId, String articleAttribute);
}
