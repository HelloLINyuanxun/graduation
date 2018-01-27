package elephant.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Service;

import elephant.model.Category;
import elephant.service.CategoryService;

@Service("categoryService")
public class CategoryServiceImpl extends BaseServiceImpl<Category> implements
		CategoryService {
	@SuppressWarnings("unchecked")
	@Override
	public List<Category> queryJoinManeger(String type, int page, int size) {
		// TODO Auto-generated method stub
		String hql = "from Category c left join fetch c.maneger where c.type like :type";
		return getSession().createQuery(hql)
				.setString("type", "%" + type + "%")
				.setFirstResult((page - 1) * size) // 从第几个开始显示
				.setMaxResults(size) // 显示几个
				.list();
	}

}
