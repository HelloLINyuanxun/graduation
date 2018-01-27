package util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class TrieTree implements Serializable {

	/**
	 * �����л���ʶ��
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * ���ڵ�
	 */
	Node root = new Node(' ');

	// ����Trie Tree
	public void insert(String words) {
		char[] arr = words.toCharArray();
		Node currentNode = root;
		for (char c : arr) {
			Node node = currentNode.findNode(c);
			// ��������ڸýڵ������
			if (node == null) {
				Node n = new Node(c);
				currentNode.childList.add(n);
				currentNode = n;
			} else {
				currentNode = node;
			}
		}
		// �ڴʵ����һ���ֽڵ���Ϊtrue
		currentNode.isEnd = true;
	}

	/**
	 * 
	 * @param bundlePath
	 *            ������·�������ļ���ַ�������뵱ǰ��
	 * @throws IOException
	 */
	public void bundleInsertFoLine(String bundlePath) throws IOException {
		BufferedReader bundleBR = new BufferedReader(new InputStreamReader(
				new FileInputStream(bundlePath), "utf-8"));
		String readLine;
		while ((readLine = bundleBR.readLine()) != null) {
			this.insert(readLine);
		}
		
		
		System.out.println("�ֵ���ӳɹ�");
		bundleBR.close();
	}

	/**
	 * 
	 * @param bundlePath
	 *            ������·�������ļ���ַ�������뵱ǰ��
	 * @throws IOException
	 */
	public void bundleInsertForSpace(String bundlePath) throws IOException {
		BufferedReader bundleBR = new BufferedReader(new InputStreamReader(
				new FileInputStream(bundlePath), "utf-8"));
		String readLine;
		while ((readLine = bundleBR.readLine()) != null) {
			String[] words = readLine.split("");
			for (int i = 0; i < words.length; i++) {
				this.insert(words[i]);
			}
		}
		System.out.println("�ֵ���ӳɹ�");
		bundleBR.close();
	}

	/**
	 * ���������Ƿ���������б��ֵ
	 * 
	 * @param word
	 *            ��Ҫ�ж����Ƿ���ڸôʵĴ�
	 * @return boolen
	 */
	public boolean search(String word) {
		char[] arr = word.toCharArray();
		Node currentNode = root;
		for (int i = 0; i < arr.length; i++) {
			Node n = currentNode.findNode(arr[i]);
			if (n != null) {
				currentNode = n;
				// �ж��Ƿ�Ϊ�ʵ�β�ڵ�ڵ�
				if (n.isEnd) {
					if (n.c == arr[arr.length - 1]) {
						return true;
					}
				}
			}
		}
		return false;
	}

	/**
	 * �����Զ������ʽ����
	 * 
	 * @param objectSavePath
	 *            ���󱣴��ַ
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public void saveAsObject(String objectSavePath)
			throws FileNotFoundException, IOException {
		ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(
				objectSavePath));
		oos.writeObject(this);
		oos.flush();
		oos.close();
		System.out.println("���󱣴�ɹ�");
	}

	/**
	 * 
	 * @param treeObjecPath tree�ĵ�ַ
	 * @return TrieTree
	 * @throws FileNotFoundException
	 * @throws IOException
	 * @throws ClassNotFoundException
	 */
	public TrieTree readObjectForTree(String treeObjecPath)
			throws FileNotFoundException, IOException, ClassNotFoundException {
		ObjectInputStream ois = new ObjectInputStream(new FileInputStream(
				treeObjecPath));
		TrieTree tree = (TrieTree) ois.readObject();
		ois.close();
		return tree;

	}
}
