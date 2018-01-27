package elephant.service;

import java.util.List;

import elephant.model.Category;

public interface CategoryService extends BaseService<Category> {
	//查询类别信息，级联管理员
	public List<Category> queryJoinManeger(String type,int page, int size);
}
