package util;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

public class Node implements Serializable {
	/**
	 * @author zoe
	 */
	private static final long serialVersionUID = 1L;
	// ��¼��ǰ�ڵ����
	char c;
	// �жϸ����Ƿ�����ĩβ���������Ϊfalse
	boolean isEnd;
	// �ӽڵ�
	List<Node> childList;

	public Node(char c) {
		super();
		this.c = c;
		isEnd = false;
		childList = new LinkedList<Node>();
	}

	// ���ҵ�ǰ�ӽڵ����Ƿ񱣻�c�Ľڵ�
	public Node findNode(char c) {
		for (Node node : childList) {
			if (node.c == c) {
				return node;
			}
		}

		return null;
	}
}
