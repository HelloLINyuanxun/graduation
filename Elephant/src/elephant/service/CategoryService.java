package elephant.service;

import java.util.List;

import elephant.model.Category;

public interface CategoryService extends BaseService<Category> {
	//��ѯ�����Ϣ����������Ա
	public List<Category> queryJoinManeger(String type,int page, int size);
}
