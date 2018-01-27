package spiderCommentsUtil;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
//import java.io.BufferedWriter;
//import java.io.File;
//import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
//import java.io.OutputStreamWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

/**
 * 
 * @author zoe
 * 
 * @param jsonURL
 *            需要根据地址栏自定义json地址 如："http://club.jd.com/productpage/p-" + productId
 *            + "-s-1-t-1-p-" + page + ".html"
 * @param productId
 *            商品id
 * @param id
 *            存储文本的序列号 从0开始
 * @param page
 *            爬取目标商品的页数
 * @param saveURL
 *            爬取文件保存地址
 * 
 *            http://club.jd.com/productpage/p-1106432-s-0-t-1-p-0.html
 * 
 *            p:商品id
 * 
 *            s:评论类型 0>>全部评论 1>>差评 2>>中评（几乎差评） 3>>好评 4>>晒图 5>>追评
 * 
 *            t:排序类型 1，2,4>>时间排序 3,5>>推荐排序 p:分页
 */
public class Spider {

	private int id = 0;
	// json文件 URL 地址栏参数
	private String s = "0";
	private String t = "1";
	private int page = 0;
	private String productId;
	private String saveURL;
	private int frequency = 120;
	private String fileName;

	/**
	 * 开始爬取json文件
	 */
	public List<String> beginCrawing() {
		List<String> crawingList = new ArrayList<String>();
		for (int j = 0; j < frequency; j++) {
			String json = loadJson("http://club.jd.com/productpage/p-"
					+ productId + "-s-" + s + "-t-" + t + "-p-" + page
					+ ".html");
			page++;
			JSONObject jObj = JSONObject.parseObject(json);
			if (jObj != null) {
				JSONArray comments = jObj.getJSONArray("comments");
				if (comments != null && !"".equals(comments)) {
					for (int i = 0; i < comments.size(); i++) {
						JSONObject comment = comments.getJSONObject(i);
						String tempContent = comment.getString("content");
						if (tempContent != null && !"".equals(tempContent)) {
							toSave(fileName, tempContent+"\r\n");
							crawingList.add(tempContent);
							System.out.println(tempContent);
						} else {
							break;
						}
					}
				}
			} else {
				break;
			}
		}
		return crawingList;
	}

	/**
	 * B方法追加文件：使用FileWriter
	 */
	private void toSave(String fileName, String content) {
		try {
			// 打开一个写文件器，构造函数中的第二个参数true表示以追加形式写文件,如果为
			// true，则将字节写入文件末尾处，而不是写入文件开始处
			BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(
					new FileOutputStream(fileName, true), "UTF-8"));
			writer.write(content);
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 存储爬取的文件
	 * 
	 * @param content
	 *            保存的评论内容
	 * @throws IOException
	 */
	// private void toSave(String content) throws IOException {
	// // TODO Auto-generated method stub
	//
	// FileOutputStream fos = new FileOutputStream(new File(saveURL + "\\"
	// + id + ".txt"));
	// BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(fos,
	// "utf-8"));
	// bw.write(content);
	// bw.write("\r\n");
	// bw.close();
	// id++;
	//
	// }

	/**
	 * 加载url地址的json文件
	 * 
	 * @param url
	 *            json文件地址
	 * @return
	 */
	private static String loadJson(String url) {
		StringBuilder json = new StringBuilder();
		try {
			URL urlObject = new URL(url);
			URLConnection uc = urlObject.openConnection();
			BufferedReader in = new BufferedReader(new InputStreamReader(
					uc.getInputStream(), "GBK"));
			String inputLine = null;
			while ((inputLine = in.readLine()) != null) {
				json.append(inputLine);
			}
			in.close();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return json.toString();
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getSaveURL() {
		return saveURL;
	}

	public void setSaveURL(String saveURL) {
		this.saveURL = saveURL;
	}

	public String getS() {
		return s;
	}

	public void setS(String s) {
		this.s = s;
	}

	public String getT() {
		return t;
	}

	public void setT(String t) {
		this.t = t;
	}

	public int getFrequency() {
		return frequency;
	}

	public void setFrequency(int frequency) {
		this.frequency = frequency;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

}
