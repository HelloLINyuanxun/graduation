package elephant.serviceImpl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import elephant.service.BaseService;

@Service("baseService")
@Lazy(true)
public class BaseServiceImpl<T> implements BaseService<T> {

	
	@SuppressWarnings("rawtypes")
	private Class clazz;
	@Resource
	private SessionFactory sessionFactory;

	@SuppressWarnings({ "rawtypes" })
	public BaseServiceImpl() {
		ParameterizedType type = (ParameterizedType) (this.getClass()
				.getGenericSuperclass());
		clazz = (Class)type.getActualTypeArguments()[0];
	}

	protected Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void update(T t) {
		// TODO Auto-generated method stub
		getSession().update(t);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		System.out.println(clazz.getSimpleName());
		String hql = "delete " + clazz.getSimpleName() + " as a where a.id=:id";
		getSession().createQuery(hql).setInteger("id", id).executeUpdate();
	}

	@Override
	public void save(T t) {
		// TODO Auto-generated method stub
		getSession().save(t);
	}

	@SuppressWarnings("unchecked")
	@Override
	public T get(int id) {
		// TODO Auto-generated method stub
		return (T) getSession().get(clazz, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> query() {
		// TODO Auto-generated method stub
		String hql = "from " + clazz.getSimpleName();
		return getSession().createQuery(hql).list();
	}

}



