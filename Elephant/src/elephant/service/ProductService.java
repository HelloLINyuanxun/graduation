package elephant.service;

import java.util.List;

import elephant.model.Product;

public interface ProductService extends BaseService<Product> {
	public List<Product> queryJoinXLreview(int page, int size);
	public List<Product> queryByCategoryId(int cid);
}
