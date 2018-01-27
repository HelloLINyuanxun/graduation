package elephant.service;

import elephant.model.Xreview;

public interface XReviewService extends BaseService<Xreview> {
	public void deleteByPID(int pid);
}
