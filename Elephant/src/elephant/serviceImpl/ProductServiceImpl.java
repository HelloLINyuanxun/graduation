package elephant.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Service;

import elephant.model.Product;
import elephant.service.ProductService;

@Service("productService")
public class ProductServiceImpl extends BaseServiceImpl<Product> implements
		ProductService {

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> queryJoinXLreview(int page, int size) {
		// TODO Auto-generated method stub
		String hql = "from Product p left join fetch p.lreviews join fetch p.xreviews";
		return getSession().createQuery(hql).setFirstResult(page)
				.setMaxResults(size).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> queryByCategoryId(int cid) {
		// TODO Auto-generated method stub
		//String hql = "from Product p left join fetch p.lreviews join fetch p.xreviews join fetch p.category where p.category.id=:cid";
		String hql = "from Product p where cid=:cid";
		return getSession().createQuery(hql).setInteger("cid", cid)
				.setFirstResult(0).setMaxResults(4).list();
	}

}
