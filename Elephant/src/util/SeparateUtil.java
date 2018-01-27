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
	 * ��������ʽ�򷽷�����ִʹ���
	 * 
	 * @param str
	 *            ��Ҫ�ִʵĴ�
	 * @param typeOfSeg
	 *            ���ո��ֵ�ִ�
	 * @return �ִʹ����н��ֳ����Ĵʲ���map��������
	 * @throws FileNotFoundException
	 * @throws IOException
	 * @throws ClassNotFoundException
	 */
	public Map<String, Integer> stringSep(String str, TrieTree typeOfSeg)
			throws FileNotFoundException, IOException, ClassNotFoundException {
		// ��ȡ�ִʹ�����ֵ�11
		TrieTree sepDic = typeOfSeg;
		// �ִʷ���
		Node root = sepDic.root;
		char[] arr = str.toCharArray();
		Node currentNode = root;
		Map<String, Integer> map = new HashMap<String, Integer>();
		// ��¼Trie Tree ��root��ʼƥ���������
		StringBuilder sb = new StringBuilder();
		// ���һ��ƥ�䵽�Ĵʣ����ƥ��ԭ�򣬿��ܻ�ƥ�䵽����֣�������Ǹ�Ϊ׼
		String word = "";
		// ��¼��¼���һ��ƥ������
		int idx = 0;
		for (int i = 0; i < arr.length; i++) {
			Node n = currentNode.findNode(arr[i]);
			if (n != null) {
				sb.append(n.c);
				currentNode = n;
				// ƥ�䵽��
				if (n.isEnd) {
					// ��¼���һ��ƥ��Ĵ�
					word = sb.toString();
					// ��¼���һ��ƥ������
					idx = i;
				}
			} else {
				// �ж�word�Ƿ���ֵ
				if (word != null && word.length() > 0) {
					Integer num = map.get(word);
					if (num == null) {
						map.put(word, 1);
					} else {
						map.put(word, num + 1);
					}
					// i���˵����ƥ�������
					i = idx;
					// ��root�Ŀ�ʼƥ��
					currentNode = root;
					// ���ƥ�䵽�Ĵ�
					word = null;
					// ��յ�ǰ·��ƥ�䵽��������
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
	 *            ��Ҫ�ִʵĴ�
	 * @param typeOfSeg
	 *            �Ժ����ֵ�ִ�
	 * @return �ִʹ����н��ֳ����Ĵʲ���map��������
	 * @throws FileNotFoundException
	 * @throws IOException
	 * @throws ClassNotFoundException
	 */
	public Map<String, Integer> stringSep(String str, String typeOfSeg)
			throws FileNotFoundException, IOException, ClassNotFoundException {
		// ��������������ȡ�ļ�
		ObjectInputStream ois = new ObjectInputStream(new FileInputStream(
				typeOfSeg));
		TrieTree sepDic = (TrieTree) ois.readObject();
		ois.close();
		// �ִʷ���
		Node root = sepDic.root;
		char[] arr = str.toCharArray();
		Node currentNode = root;
		Map<String, Integer> map = new HashMap<String, Integer>();
		// ��¼Trie Tree ��root��ʼƥ���������
		StringBuilder sb = new StringBuilder();
		// ���һ��ƥ�䵽�Ĵʣ����ƥ��ԭ�򣬿��ܻ�ƥ�䵽����֣�������Ǹ�Ϊ׼
		String word = "";
		// ��¼��¼���һ��ƥ������
		int idx = 0;
		for (int i = 0; i < arr.length; i++) {
			Node n = currentNode.findNode(arr[i]);
			if (n != null) {
				sb.append(n.c);
				currentNode = n;
				// ƥ�䵽��
				if (n.isEnd) {
					// ��¼���һ��ƥ��Ĵ�
					word = sb.toString();
					// ��¼���һ��ƥ������
					idx = i;
				}
			} else {
				// �ж�word�Ƿ���ֵ
				if (word != null && word.length() > 0) {
					Integer num = map.get(word);
					if (num == null) {
						map.put(word, 1);

					} else {
						map.put(word, num + 1);

					}
					// i���˵����ƥ�������
					i = idx;
					// ��root�Ŀ�ʼƥ��
					currentNode = root;
					// ���ƥ�䵽�Ĵ�
					word = null;
					// ��յ�ǰ·��ƥ�䵽��������
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
	 *            ������ĵ�ַ
	 * @param typeOfSeg
	 *            ��������ֵ�����
	 * @return �����
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
		System.out.println("���������,�����������ʽ����");
		br.close();
		return result;
	}

	/**
	 * 
	 * @param bundleDataPath
	 *            ������ĵ�ַ
	 * @param typeOfSeg
	 *            �ִʵĴʵ�
	 * @return �����map����ʽ����
	 * @throws FileNotFoundException
	 * @throws ClassNotFoundException
	 * @throws IOException
	 */
	public Map<String, Integer> bundleSegMap(String bundleDataPath,
			TrieTree typeOfSeg) throws FileNotFoundException,
			ClassNotFoundException, IOException {
		// ��Ӳ��� ����ͣ�ô���
		TrieTree stopTree = new TrieTree();
		stopTree.bundleInsertFoLine("C:\\Users\\zoe\\Desktop\\newstop.txt");
		// ��Ӳ���
		String s;
		BufferedReader br = new BufferedReader(new InputStreamReader(
				new FileInputStream(bundleDataPath), "utf-8"));
		Map<String, Integer> currMap = null;
		Map<String, Integer> result = new HashMap<String, Integer>();
		while ((s = br.readLine()) != null) {
			currMap = this.stringSep(s, typeOfSeg);
			for (Entry<String, Integer> currentEntry : currMap.entrySet()) {
				//�����һ���ж��Ƿ���ͣ�ôʵ��ж����
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
		System.out.println("���������,�����map����ʽ����");
		br.close();
		return result;
	}
}
