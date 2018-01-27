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
	 * 树序列化标识符
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 根节点
	 */
	Node root = new Node(' ');

	// 构建Trie Tree
	public void insert(String words) {
		char[] arr = words.toCharArray();
		Node currentNode = root;
		for (char c : arr) {
			Node node = currentNode.findNode(c);
			// 如果不存在该节点则添加
			if (node == null) {
				Node n = new Node(c);
				currentNode.childList.add(n);
				currentNode = n;
			} else {
				currentNode = node;
			}
		}
		// 在词的最后一个字节点标记为true
		currentNode.isEnd = true;
	}

	/**
	 * 
	 * @param bundlePath
	 *            批处理路径，按文件地址批量插入当前树
	 * @throws IOException
	 */
	public void bundleInsertFoLine(String bundlePath) throws IOException {
		BufferedReader bundleBR = new BufferedReader(new InputStreamReader(
				new FileInputStream(bundlePath), "utf-8"));
		String readLine;
		while ((readLine = bundleBR.readLine()) != null) {
			this.insert(readLine);
		}
		
		
		System.out.println("字典添加成功");
		bundleBR.close();
	}

	/**
	 * 
	 * @param bundlePath
	 *            批处理路径，按文件地址批量插入当前树
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
		System.out.println("字典添加成功");
		bundleBR.close();
	}

	/**
	 * 查找树中是否包含参数列表的值
	 * 
	 * @param word
	 *            需要判断树是否存在该词的词
	 * @return boolen
	 */
	public boolean search(String word) {
		char[] arr = word.toCharArray();
		Node currentNode = root;
		for (int i = 0; i < arr.length; i++) {
			Node n = currentNode.findNode(arr[i]);
			if (n != null) {
				currentNode = n;
				// 判断是否为词的尾节点节点
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
	 * 将树以对象的形式保存
	 * 
	 * @param objectSavePath
	 *            对象保存地址
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
		System.out.println("对象保存成功");
	}

	/**
	 * 
	 * @param treeObjecPath tree的地址
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
