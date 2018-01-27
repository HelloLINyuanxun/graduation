package test;

import java.sql.Timestamp;
import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import elephant.action.AccountAction;
import elephant.model.*;
import elephant.service.AccountService;
import elephant.service.CategoryService;
import elephant.service.LReviewService;
import elephant.service.ManegerService;
import elephant.service.ProductService;
import elephant.service.MySourceService;
import elephant.service.UserService;
import elephant.service.XReviewService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TestIoC {
	@Resource
	private XReviewService xReviewServiceService;
	@Resource
	private Date date;
	@Resource
	private AccountService accountService;
	@Resource
	private AccountAction accountAction;
	@Resource
	private ManegerService manegerService;
	@Resource
	private ProductService productService;
	@Resource
	private UserService userService;
	@Resource
	private LReviewService lReviewService;

	@Test
	public void testLreview() {
		Lreview lreview = lReviewService.get(1);
		System.out.println(lreview.getUser().getName());
	}

	@Test
	public void testInsertReview() {
		Timestamp ts = new Timestamp(new Date().getTime());
		User user = userService.get(1);
		Product product = productService.get(2);
		Lreview t = new Lreview();
		t.setContent("�ܲ���");
		t.setUser(user);
		t.setDate(ts);
		t.setProduct(product);
		lReviewService.save(t);
	}

	@Test
	public void springIoC() {
		Timestamp ts = new Timestamp(new Date().getTime());
		Lreview l = new Lreview();
		l.setId(1);
		l.setDate(ts);
		l.setContent("hey");
		lReviewService.update(l);
		System.out.println(date);
	}

	@Resource
	private CategoryService categoryService;
	@Resource
	private MySourceService mySourceService;

	// ��������
	@Test
	public void testJoin() {
		for (Product p : productService.queryJoinXLreview(1, 2)) {
			System.out.println("hello");
			System.out.println(p + "," + p.getLreviews());
			System.out.println(p + "," + p.getXreviews());
		}
		productService.queryByCategoryId(0);
	}

	@Test
	public void testProduct() {

		for (Category c : categoryService.queryJoinManeger("", 1, 2)) {
			System.out.println("hello");
			System.out.println(c + "," + c.getManeger());
		}
	}

	@Test
	public void testManeger() {
		Maneger maneger = new Maneger();
		maneger.setName("admin1");
		manegerService.save(maneger);
		Category category = new Category();
		category.setType("Ůʿ����");
		category.setManeger(maneger);
		categoryService.save(category);
	}

	@Test
	public void hibernate() {
		Category category = new Category();
		category.setType("Ůʿ����");
		category.setId(3);
		categoryService.update(category);
	}

	@Test
	public void account() {
		System.out.println("ǰ��֪ͨ,Ŀ��impl.UserDaoImpl@3eb769bb");
		System.out.println("���ƿ�ʼ");
		System.out.println("---��ʼsave����---");
		System.out.println("���ƽ���");
		System.out.println("���֪ͨ");
		System.out.println("����֪ͨ,��������:save");
		accountAction.transfer("jack", "rose", 1000);
	}

	@Test
	public void testIndex() {
		Category category = new Category();
		category.setType("����");
		categoryService.save(category);
		User user = new User();
		user.setName("rose");
		userService.save(user);
		Timestamp ts = new Timestamp(new Date().getTime());
		Product product = new Product();
		product.setDate(ts);
		product.setName("redPen");
		product.setCategory(category);
		productService.save(product);
		Mysource ms = new Mysource();
		ms.setName("����");
		mySourceService.save(ms);
		Xreview x = new Xreview();
		x.setMysource(ms);
		x.setProduct(product);
		x.setContent("hello world");
		xReviewServiceService.save(x);
		Lreview l = new Lreview();
		l.setContent("big world");
		l.setDate(ts);
		l.setProduct(product);
		l.setUser(user);
		lReviewService.save(l);

	}

	@Test
	public void testQurey() {
		System.out.println(lReviewService.query());
	}

	@Test
	public void testXreview() {
		for (Product product : productService.queryByCategoryId(1)) {
			System.out.println(product.getLreviews());
		}
	}
}
