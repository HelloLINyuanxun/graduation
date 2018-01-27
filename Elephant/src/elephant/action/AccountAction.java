package elephant.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import elephant.model.Account;

@Controller("accountAction")
@Scope("prototype")
public class AccountAction extends BaseAction<Account> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void transfer(String outUser, String inUser, int money) {
//		accountService.saveIn(inUser, money);
//		accountService.saveOut(outUser, money);
		accountService.delete(2);
	}

}
