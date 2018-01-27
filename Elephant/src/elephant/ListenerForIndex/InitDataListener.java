package elephant.ListenerForIndex;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.hankcs.hanlp.classification.classifiers.NaiveBayesClassifier;

import spiderCommentsUtil.Spider;
import spiderCommentsUtil.WordCloudUtil;
import elephant.model.Category;
import elephant.model.Mysource;
import elephant.model.Product;
import elephant.model.Xreview;
import elephant.service.CategoryService;
import elephant.service.MySourceService;
import elephant.service.ProductService;
import elephant.service.XReviewService;

public class InitDataListener implements ServletContextListener {
	private XReviewService xReviewService = null;
	private MySourceService mySourceService = null;
	private ProductService productService = null;
	private CategoryService categoryService = null;
	private ApplicationContext context = null;
	private Spider spider = new Spider();

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		// TODO Auto-generated method stub
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		//
		WordCloudUtil w1 = new WordCloudUtil();
		//
		List<String> crawingList = new ArrayList<String>();
		List<String> negtiveList = null;
		List<String> positiveList = null;
		NaiveBayesClassifier classifier = new NaiveBayesClassifier();
		context = WebApplicationContextUtils.getWebApplicationContext(event
				.getServletContext());
		categoryService = (CategoryService) context.getBean("categoryService");// ���������Ϣ
		productService = (ProductService) context.getBean("productService");// ������Ʒ��Ϣ
		xReviewService = (XReviewService) context.getBean("xReviewService");// ����xreview��Ϣ
		mySourceService = (MySourceService) context.getBean("mySourceService");// ����mySourceService��Ϣ
		List<List<Product>> bigList = new ArrayList<List<Product>>(); // bigList�д��һ��װ��Category���list
		// 1. ��ѯ���ȵ����
		for (Category category : categoryService.query()) {
			// �����ȵ����id��ȡ�Ƽ���Ʒ��Ϣ
			List<Product> lst = productService.queryByCategoryId(category
					.getId());
			// ������Ʒ����ȡ���ۣ����������ɴ���
			for (Product product : lst) {
				xReviewService.deleteByPID(product.getId());
				if (product.getUrl() != null && !"".equals(product.getUrl())) {
					spider.setProductId(product.getUrl());
					spider.setFrequency(10);
					spider.setS("3");
					spider.setT("1");
					fileInit("C:\\Users\\zoe\\Desktop\\project\\elephantURL\\totall\\"
							+ product.getId() + ".txt");
					spider.setFileName("C:\\Users\\zoe\\Desktop\\project\\elephantURL\\totall\\"
							+ product.getId() + ".txt");
					positiveList = spider.beginCrawing();
					crawingList.addAll(positiveList);
					spider.setS("1");
					spider.setT("1");
					negtiveList = spider.beginCrawing();
					crawingList.addAll(negtiveList);
					try {
						classifier.train("C:\\Users\\zoe\\Desktop\\JDComments");
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					// System.out.println(crawingList);
					try {
						w1.createWordCloud(product.getId().toString(),
								"C:\\Users\\zoe\\Desktop\\project\\elephantURL\\totall\\"
										+ product.getId() + ".txt");
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					for (String temp : crawingList) {
						String result = classifier.classify(temp);
						if (result.equals("negtive")) {
							if (product.getNeg() == null) {
								product.setNeg(0);
							}
							product.setNeg(product.getNeg() + 1);
						} else {
							if (product.getPos() == null) {
								product.setPos(0);
							}
							product.setPos(product.getPos() + 1);
						}
						productService.update(product);
						Mysource mys = mySourceService.get(1);
						Xreview xreview = new Xreview();
						xreview.setProduct(product);
						xreview.setMysource(mys);
						xreview.setContent(temp);
						xReviewService.save(xreview);
					}

				}
				//
				bigList.add(lst); // ��װ��category��list�ŵ�bigList��
			}
			// 2. �Ѳ�ѯ��bigList����application���ö���
			event.getServletContext().setAttribute("bigList", bigList);
		}
	}

	private void fileInit(String filePath) {
		// TODO Auto-generated method stub
		File file = new File(filePath);

		if (file.exists()) {
			file.delete();
		}
	}
}
