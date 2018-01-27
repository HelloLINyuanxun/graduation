package elephant.serviceImpl;

import org.springframework.stereotype.Service;

import elephant.model.Maneger;
import elephant.service.ManegerService;
@Service("manegerService")
public class ManegerServiceImpl extends BaseServiceImpl<Maneger> implements
		ManegerService {

}
