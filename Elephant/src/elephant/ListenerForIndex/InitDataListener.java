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
		categoryService = (CategoryService) context.getBean("categoryService");// 加载类别信息
		productService = (ProductService) context.getBean("productService");// 加载商品信息
		xReviewService = (XReviewService) context.getBean("xReviewService");// 加载xreview信息
		mySourceService = (MySourceService) context.getBean("mySourceService");// 加载mySourceService信息
		List<List<Product>> bigList = new ArrayList<List<Product>>(); // bigList中存放一个装有Category类的list
		// 1. 查询出热点类别
		for (Category category : categoryService.query()) {
			// 根据热点类别id获取推荐商品信息
			List<Product> lst = productService.queryByCategoryId(category
					.getId());
			// 根据商品的爬取评论，分析，生成词云
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
				bigList.add(lst); // 将装有category的list放到bigList中
			}
			// 2. 把查询的bigList交给application内置对象
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
