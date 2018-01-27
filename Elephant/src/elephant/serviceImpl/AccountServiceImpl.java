package elephant.serviceImpl;

import org.springframework.stereotype.Service;

import elephant.model.Account;
import elephant.service.AccountService;

@Service("accountService")
public class AccountServiceImpl extends BaseServiceImpl<Account> implements
		AccountService {

	@Override
	public void saveIn(String inUser, int money) {
		// TODO Auto-generated method stub
		String hql = "update Account a set a.money=a.money+:money where a.name=:name";
		getSession().createQuery(hql).setString("name", inUser)
				.setInteger("money", money).executeUpdate();
	}

	@Override
	public void saveOut(String outUser, int money) {
		// TODO Auto-generated method stub
		String hql = "update Account a set a.money=a.money-:money where a.name=:name";
		getSession().createQuery(hql).setString("name", outUser)
				.setFloat("money", money).executeUpdate();
	}

}
