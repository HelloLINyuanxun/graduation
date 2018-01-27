package util;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

public class Node implements Serializable {
	/**
	 * @author zoe
	 */
	private static final long serialVersionUID = 1L;
	// 记录当前节点的字
	char c;
	// 判断该字是否词语的末尾，如果是则为false
	boolean isEnd;
	// 子节点
	List<Node> childList;

	public Node(char c) {
		super();
		this.c = c;
		isEnd = false;
		childList = new LinkedList<Node>();
	}

	// 查找当前子节点中是否保护c的节点
	public Node findNode(char c) {
		for (Node node : childList) {
			if (node.c == c) {
				return node;
			}
		}

		return null;
	}
}
