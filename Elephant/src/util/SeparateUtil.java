package util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class SeparateUtil {
	/**
	 * 以树的形式向方法传入分词规则
	 * 
	 * @param str
	 *            需要分词的词
	 * @param typeOfSeg
	 *            按照该字典分词
	 * @return 分词过程中将分出来的词插入map，并返回
	 * @throws FileNotFoundException
	 * @throws IOException
	 * @throws ClassNotFoundException
	 */
	public Map<String, Integer> stringSep(String str, TrieTree typeOfSeg)
			throws FileNotFoundException, IOException, ClassNotFoundException {
		// 获取分词规则的字典11
		TrieTree sepDic = typeOfSeg;
		// 分词方法
		Node root = sepDic.root;
		char[] arr = str.toCharArray();
		Node currentNode = root;
		Map<String, Integer> map = new HashMap<String, Integer>();
		// 记录Trie Tree 从root开始匹配的所有字
		StringBuilder sb = new StringBuilder();
		// 最后一次匹配到的词，最大匹配原则，可能会匹配到多个字，以最长的那个为准
		String word = "";
		// 记录记录最后一次匹配坐标
		int idx = 0;
		for (int i = 0; i < arr.length; i++) {
			Node n = currentNode.findNode(arr[i]);
			if (n != null) {
				sb.append(n.c);
				currentNode = n;
				// 匹配到词
				if (n.isEnd) {
					// 记录最后一次匹配的词
					word = sb.toString();
					// 记录最后一次匹配坐标
					idx = i;
				}
			} else {
				// 判断word是否有值
				if (word != null && word.length() > 0) {
					Integer num = map.get(word);
					if (num == null) {
						map.put(word, 1);
					} else {
						map.put(word, num + 1);
					}
					// i回退到最后匹配的坐标
					i = idx;
					// 从root的开始匹配
					currentNode = root;
					// 清空匹配到的词
					word = null;
					// 清空当前路径匹配到的所有字
					sb = new StringBuilder();
				}
			}
			if (i == arr.length - 1) {
				if (word != null && word.length() > 0) {
					Integer num = map.get(word);
					if (num == null) {
						map.put(word, 1);

					} else {
						map.put(word, num + 1);
					}
				}
			}
		}
		return map;
	}

	/**
	 * 
	 * @param str
	 *            需要分词的词
	 * @param typeOfSeg
	 *            以何种字典分词
	 * @return 分词过程中将分出来的词插入map，并返回
	 * @throws FileNotFoundException
	 * @throws IOException
	 * @throws ClassNotFoundException
	 */
	public Map<String, Integer> stringSep(String str, String typeOfSeg)
			throws FileNotFoundException, IOException, ClassNotFoundException {
		// 创建输入流，读取文件
		ObjectInputStream ois = new ObjectInputStream(new FileInputStream(
				typeOfSeg));
		TrieTree sepDic = (TrieTree) ois.readObject();
		ois.close();
		// 分词方法
		Node root = sepDic.root;
		char[] arr = str.toCharArray();
		Node currentNode = root;
		Map<String, Integer> map = new HashMap<String, Integer>();
		// 记录Trie Tree 从root开始匹配的所有字
		StringBuilder sb = new StringBuilder();
		// 最后一次匹配到的词，最大匹配原则，可能会匹配到多个字，以最长的那个为准
		String word = "";
		// 记录记录最后一次匹配坐标
		int idx = 0;
		for (int i = 0; i < arr.length; i++) {
			Node n = currentNode.findNode(arr[i]);
			if (n != null) {
				sb.append(n.c);
				currentNode = n;
				// 匹配到词
				if (n.isEnd) {
					// 记录最后一次匹配的词
					word = sb.toString();
					// 记录最后一次匹配坐标
					idx = i;
				}
			} else {
				// 判断word是否有值
				if (word != null && word.length() > 0) {
					Integer num = map.get(word);
					if (num == null) {
						map.put(word, 1);

					} else {
						map.put(word, num + 1);

					}
					// i回退到最后匹配的坐标
					i = idx;
					// 从root的开始匹配
					currentNode = root;
					// 清空匹配到的词
					word = null;
					// 清空当前路径匹配到的所有字
					sb = new StringBuilder();
				}
			}
			if (i == arr.length - 1) {
				if (word != null && word.length() > 0) {
					Integer num = map.get(word);
					if (num == null) {
						map.put(word, 1);
					} else {
						map.put(word, num + 1);
					}
				}
			}
		}

		return map;
	}

	/**
	 * 
	 * @param bundleDataPath
	 *            批处理的地址
	 * @param typeOfSeg
	 *            批处理的字典类型
	 * @return 结果树
	 * @throws FileNotFoundException
	 * @throws ClassNotFoundException
	 * @throws IOException
	 */
	public TrieTree bundleSegTree(String bundleDataPath, TrieTree typeOfSeg)
			throws FileNotFoundException, ClassNotFoundException, IOException {
		String s;
		BufferedReader br = new BufferedReader(new InputStreamReader(
				new FileInputStream(bundleDataPath), "utf-8"));
		TrieTree result = new TrieTree();
		Map<String, Integer> map = null;
		while ((s = br.readLine()) != null) {
			map = this.stringSep(s, typeOfSeg);
			for (Entry<String, Integer> entry : map.entrySet()) {
				result.insert(entry.getKey());
			}

		}
		System.out.println("批处理完成,结果以树的形式返回");
		br.close();
		return result;
	}

	/**
	 * 
	 * @param bundleDataPath
	 *            批处理的地址
	 * @param typeOfSeg
	 *            分词的词典
	 * @return 结果以map的形式返回
	 * @throws FileNotFoundException
	 * @throws ClassNotFoundException
	 * @throws IOException
	 */
	public Map<String, Integer> bundleSegMap(String bundleDataPath,
			TrieTree typeOfSeg) throws FileNotFoundException,
			ClassNotFoundException, IOException {
		// 添加部分 创建停用词树
		TrieTree stopTree = new TrieTree();
		stopTree.bundleInsertFoLine("C:\\Users\\zoe\\Desktop\\newstop.txt");
		// 添加部分
		String s;
		BufferedReader br = new BufferedReader(new InputStreamReader(
				new FileInputStream(bundleDataPath), "utf-8"));
		Map<String, Integer> currMap = null;
		Map<String, Integer> result = new HashMap<String, Integer>();
		while ((s = br.readLine()) != null) {
			currMap = this.stringSep(s, typeOfSeg);
			for (Entry<String, Integer> currentEntry : currMap.entrySet()) {
				//添加了一个判断是否是停用词的判断语句
				if (!stopTree.search(currentEntry.getKey())) {
					if (result.containsKey(currentEntry.getKey())) {
						result.put(
								currentEntry.getKey(),
								currentEntry.getValue()
										+ result.get(currentEntry.getKey()));
					} else {
						result.put(currentEntry.getKey(),
								currentEntry.getValue());
					}
				}
			}

		}
		System.out.println("批处理完成,结果以map的形式返回");
		br.close();
		return result;
	}
}
