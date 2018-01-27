package elephant.serviceImpl;

import org.springframework.stereotype.Service;

import elephant.model.Xreview;
import elephant.service.XReviewService;

@Service("xReviewService")
public class XReviewServiceImpl extends BaseServiceImpl<Xreview> implements
		XReviewService {
	public void deleteByPID(int pid) {
		String hql = "delete Xreview as x where x.product.id=:pid";
		getSession().createQuery(hql).setInteger("pid", pid).executeUpdate();
	}
}
