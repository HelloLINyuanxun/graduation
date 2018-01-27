package elephant.service;

import elephant.model.Account;

public interface AccountService extends BaseService<Account> {
	public void saveIn(String inUser,int money);

	public void saveOut(String outUser,int money);
}
