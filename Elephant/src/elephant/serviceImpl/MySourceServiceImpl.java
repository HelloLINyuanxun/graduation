package elephant.serviceImpl;

import org.springframework.stereotype.Service;

import elephant.model.Mysource;
import elephant.service.MySourceService;
@Service("mySourceService")
public class MySourceServiceImpl extends BaseServiceImpl<Mysource> implements
		MySourceService {

}
