package elephant.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import elephant.model.Category;
@Controller("categoryAction")
@Scope("prototype")
public class CategoryAction extends BaseAction<Category> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */

	public String update() {
		System.out.println("--update--");
		System.out.println(categoryService);
		categoryService.update(model);
		return "index";
	}

	public String save() {
		System.out.println("--save--");
		System.out.println(categoryService);
		return "index";
	}

}
