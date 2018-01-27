package test;

import org.junit.Test;

import elephant.model.Category;
import elephant.service.CategoryService;
import elephant.serviceImpl.CategoryServiceImpl;

public class TestHibernate {
	@Test
	public void testCategory() {
		CategoryService categoryService = new CategoryServiceImpl();
		Category category = new Category();
		category.setType("ÄÐÊ¿ÐÝÏÐ");
		categoryService.save(category);

	}
}
