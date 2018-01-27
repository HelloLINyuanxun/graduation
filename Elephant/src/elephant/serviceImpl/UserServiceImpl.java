package elephant.serviceImpl;

import org.springframework.stereotype.Service;

import elephant.model.User;
import elephant.service.UserService;
@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService{

}
