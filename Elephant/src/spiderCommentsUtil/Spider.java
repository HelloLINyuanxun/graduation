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
 *            ��Ҫ���ݵ�ַ���Զ���json��ַ �磺"http://club.jd.com/productpage/p-" + productId
 *            + "-s-1-t-1-p-" + page + ".html"
 * @param productId
 *            ��Ʒid
 * @param id
 *            �洢�ı������к� ��0��ʼ
 * @param page
 *            ��ȡĿ����Ʒ��ҳ��
 * @param saveURL
 *            ��ȡ�ļ������ַ
 * 
 *            http://club.jd.com/productpage/p-1106432-s-0-t-1-p-0.html
 * 
 *            p:��Ʒid
 * 
 *            s:�������� 0>>ȫ������ 1>>���� 2>>���������������� 3>>���� 4>>ɹͼ 5>>׷��
 * 
 *            t:�������� 1��2,4>>ʱ������ 3,5>>�Ƽ����� p:��ҳ
 */
public class Spider {

	private int id = 0;
	// json�ļ� URL ��ַ������
	private String s = "0";
	private String t = "1";
	private int page = 0;
	private String productId;
	private String saveURL;
	private int frequency = 120;
	private String fileName;

	/**
	 * ��ʼ��ȡjson�ļ�
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
	 * B����׷���ļ���ʹ��FileWriter
	 */
	private void toSave(String fileName, String content) {
		try {
			// ��һ��д�ļ��������캯���еĵڶ�������true��ʾ��׷����ʽд�ļ�,���Ϊ
			// true�����ֽ�д���ļ�ĩβ����������д���ļ���ʼ��
			BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(
					new FileOutputStream(fileName, true), "UTF-8"));
			writer.write(content);
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * �洢��ȡ���ļ�
	 * 
	 * @param content
	 *            �������������
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
	 * ����url��ַ��json�ļ�
	 * 
	 * @param url
	 *            json�ļ���ַ
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
