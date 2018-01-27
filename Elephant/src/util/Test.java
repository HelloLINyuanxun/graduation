package util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
//import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
/**
 * 
 * @author zoe
 * 
 */
public class Test {
	public static void main(String[] args) throws IOException,
			ClassNotFoundException {

		// �����ִ�����Ĵʵ���
		TrieTree segTree = new TrieTree();
		segTree.bundleInsertFoLine("C:\\Users\\zoe\\Desktop\\dicNeg.txt");
		segTree.bundleInsertFoLine("C:\\Users\\zoe\\Desktop\\dicPos.txt");
		segTree.bundleInsertFoLine("C:\\Users\\zoe\\Desktop\\dic.txt");
		segTree.bundleInsertForSpace("C:\\Users\\zoe\\Desktop\\modern.txt");

		// �������������
		TrieTree emoPosTree = new TrieTree();
		TrieTree emoNegTree = new TrieTree();
		emoPosTree.bundleInsertFoLine("C:\\Users\\zoe\\Desktop\\dicPos.txt");
		emoNegTree.bundleInsertFoLine("C:\\Users\\zoe\\Desktop\\dicNeg.txt");
		//�Զ���������ʽ������
		Test test=new Test();
		test.saveTree("C:\\Users\\zoe\\Desktop\\Object\\emoPosTree.txt", emoPosTree);
		test.saveTree("C:\\Users\\zoe\\Desktop\\Object\\emoNegTree.txt", emoNegTree);
		test.saveTree("C:\\Users\\zoe\\Desktop\\Object\\segTree.txt", segTree);

		// ���Էִ�,���ҽ�����������������map�ϲ���һ��map
		SeparateUtil sep = new SeparateUtil();
		// ����һ��map�洢�ϼ�
		Map<String, Integer> dicMap = new HashMap<String, Integer>();
		// ��������map���շִ����Ľ����
		Map<String, Integer> mapP = sep.bundleSegMap(
				"C:\\Users\\zoe\\Desktop\\posData.txt", segTree);
		Map<String, Integer> mapN = sep.bundleSegMap(
				"C:\\Users\\zoe\\Desktop\\negData.txt", segTree);
		//�洢�������ݷִʼ���
		test.saveMap("C:\\Users\\zoe\\Desktop\\Object\\mapP.txt", mapP);
		test.saveMap("C:\\Users\\zoe\\Desktop\\Object\\mapN.txt", mapN);
		// �����������α����������۷ִʺ����������������������˵Ȩ��
		double posWeight = 0;
		double negWeight = 0;
		// ����������۷ִʵĽ���������浽�ϼ�
		System.out.println("***********dataP�ִʽ��************");
		for (Entry<String, Integer> entry : mapP.entrySet()) {
			if (dicMap.containsKey(entry.getKey())) {
				dicMap.put(entry.getKey(),
						dicMap.get(entry.getKey()) + entry.getValue());
			} else {
				dicMap.put(entry.getKey(), entry.getValue());
			}
			// �ۼӻ������ۺ�ִʳ������дʵ�������
			posWeight = posWeight + entry.getValue();
			System.out.println("�ڻ����ִʼ�����ռȨ�أ�" + entry.getKey() + "==="
					+ mapP.get(entry.getKey()));
		}
		// ����������۷ִʵĽ���������浽�ϼ�
		System.out.println("**********dataN�ִʽ��*************");
		for (Entry<String, Integer> entry : mapN.entrySet()) {
			if (dicMap.containsKey(entry.getKey())) {
				dicMap.put(entry.getKey(),
						dicMap.get(entry.getKey()) + entry.getValue());
			} else {
				dicMap.put(entry.getKey(), entry.getValue());
			}
			// �ۼ��������ۺ�ִʳ������дʵ�������
			negWeight = negWeight + entry.getValue();
			System.out.println("�������ִʼ�������ռȨ��:--��" + entry.getKey() + "==="
					+ mapN.get(entry.getKey()));
		}
		// ���Ժϼ��Ƿ�ɹ���ѭ���������������������бȽ�
		System.out.println("########�ϼ����������#########");
		// for (Entry<String, Integer> entry : dicMap.entrySet()) {
		// System.out.println("Ȩ��������");
		// System.out.println("�������۷ִʺ�����Ȩ��:" + posWeight);
		// System.out.println("�������۷ִʺ�����Ȩ��:" + negWeight);
		// }
		/**
		 * ���µ������۽���Ԥ��
		 */
		System.out
				.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		// �����洢��ǰ������Ȩ��
		double currentFeaWeightOnP = 0;
		double currentFeaWeightOnN = 0;
		// ������¼����������ı仯ֵ
		double totalityPN = posWeight + negWeight;
		double perTotalPN = (double) (1 / totalityPN);
		double base1 = posWeight + 1;
		double base2 = negWeight + 1;
		double pre1 = (double) (posWeight / totalityPN);
		double pre2 = (double) (negWeight / totalityPN);
		double num1 = 0;
		double num2 = 0;
		double temp1 = 0;
		double temp2 = 0;
		double result1 = 1;
		double result2 = 1;
		// Ҫ�����жϵ�����
		String review = "����̫����";
		System.out.println(review);
		Map<String, Integer> cuReviewMap = sep.stringSep(review, segTree);
		for (Entry<String, Integer> entry : cuReviewMap.entrySet()) {
			System.out.println("���۷ִʽ����ʾ��" + entry.getKey());
		}

		System.out.println();
		for (Entry<String, Integer> entry : cuReviewMap.entrySet()) {
			System.out.println("����ѭ��");
			if (emoPosTree.search(entry.getKey())
					|| emoNegTree.search(entry.getKey())) {
				System.out.println(entry.getKey() + "�Ƿ��ڻ������۷ִʼ����У�"
						+ emoPosTree.search(entry.getKey()));
				System.out.println(entry.getKey() + "�Ƿ����������۷ִʼ����У�"
						+ emoNegTree.search(entry.getKey()));

				System.out.println("��ǰ�ж�ֵΪ��" + entry.getKey());
				// �жϻ�����дʵ����Ƿ�����ö���
				if (mapP.containsKey(entry.getKey())) {
					currentFeaWeightOnP = mapP.get(entry.getKey());
					System.out.println("�����ִʼ����е�ǰ����Ȩ��:"
							+ mapP.get(entry.getKey()));
				}

				/**
				 * �����ڻ������۵ĸ��ʵķ������ĸ�� perTotalPN:����������֮һ base1:�����ִʼ���Ȩ��+1
				 * num1:�����ִʼ��ϵķ��� temp1:��ŵ���������ֵ�������۳� pre:�������
				 */
				num1 = (currentFeaWeightOnP + perTotalPN);
				temp1 = (num1 / base1);
				// BigDecimal b1 = new BigDecimal(Double.toString(temp1));
				// BigDecimal b2 = new BigDecimal(Double.toString(result1));
				// result1 = b1.multiply(b2).doubleValue();
				result1 = (temp1 * result1);

				// ��������
				System.out.println("�������ݼ�1");
				System.out.println(" currentFeaWeightOnP:"
						+ currentFeaWeightOnP);
				System.out.println(" totalityPN:" + totalityPN);
				System.out.println(" perTotalPN:" + perTotalPN);
				System.out.println(" base1:" + base1);
				System.out.println(" num1:" + num1);
				System.out.println(" temp1:" + temp1);
				System.out.println(" result1:" + (double) result1);
				if (mapN.containsKey(entry.getKey())) {
					currentFeaWeightOnN = mapN.get(entry.getKey());
					System.out.println("�����ִʼ����е�ǰ����Ȩ��:"
							+ mapN.get(entry.getKey()));
				}
				// �������������۵ĸ��ʵķ������ĸ
				num2 = (currentFeaWeightOnN + perTotalPN);
				temp2 = (num2 / base2);
				result2 = (temp2 * result2);

				// ��������
				System.out.println("�������ݼ�2");
				System.out.println(" currentFeaWeightOnN:"
						+ currentFeaWeightOnN);
				System.out.println(" totalityPN:" + totalityPN);
				System.out.println(" perTotalPN:" + perTotalPN);
				System.out.println(" base2:" + base2);
				System.out.println(" num2:" + num2);
				System.out.println(" temp2:" + temp2);
				System.out.println(" result2:" + result2);
			}
		}
		// �������վ���Ľ��
		result1 = (double) (pre1 * result1);
		result2 = (double) (pre2 * result2);
		// �жϴ�С
		if (currentFeaWeightOnN != 0 || currentFeaWeightOnN != 0) {
			if ((double) result1 > (double) result2) {
				System.out.println("************");
				System.out.println("=========>��������");
				System.out.println("************");
			} else {
				System.out.println("************");
				System.out.println("=========>��������");
				System.out.println("************");
			}
		}else{
			System.out.println("=========>��ͨ����");
		}
		// �������ͺ�����ʽ��м��
		System.out.println("�������ͺ�����ʽ��м��");
		System.out.println("������ʣ�" + (posWeight / (posWeight + negWeight)));
		System.out.println("������ʣ�" + (negWeight / (posWeight + negWeight)));
		System.out.println("�������۷ִ���Ȩ����" + posWeight);
		System.out.println("�������۷ִ���Ȩ����" + negWeight);
		System.out.println("�������ۺ�����ʣ�" + (double) (result1));
		System.out.println("�������ۺ�����ʣ�" + (double) (result2));
		System.out.println("-------------------------------");
		// ���Խ��
		// num1 = 54 + (1 / (83668 + 117871));
		// base1 = 83668 + 1;
		// num2 = 1 / (83668 + 117871);
		//
		// double num3 = 133 + (1 / (83668 + 117871));
		// double num4 = 1 + (1 / (83668 + 117871));
		// base2 = 117871 + 1;
		//
		// double resultTemp1 = (num1 / base1) * (num2 / base1);
		// double resultTemp2 = (num3 / base2) * (num4 / base2);
		// // float pr = (a / b) * (c / b) * (posWeight / (posWeight +
		// negWeight));
		// // float nr = (d / e) * (f / e) * (negWeight / (posWeight +
		// negWeight));
		// System.out.println("����ֵ1:" + resultTemp1
		// * (negWeight / (posWeight + negWeight)));
		// System.out.println("����ֵ2:" + resultTemp2
		// * (negWeight / (posWeight + negWeight)));

	}

	// ��ȡ�Զ�����ʽ���������δʹ��
	public TrieTree readObjectForTree(String treeObjecPath)
			throws FileNotFoundException, IOException, ClassNotFoundException {
		ObjectInputStream ois = new ObjectInputStream(new FileInputStream(
				treeObjecPath));
		TrieTree tree = (TrieTree) ois.readObject();
		ois.close();
		return tree;

	}
	//�����Զ������ķ�ʽ�洢�ڵ���
	public void saveTree(String dicSavePath, TrieTree tree)
			throws FileNotFoundException, IOException {
		ObjectOutputStream oot = new ObjectOutputStream(new FileOutputStream(
				dicSavePath));
		oot.writeObject(tree);
		oot.flush();
		oot.close();
	}
	//��map�Զ���������ʽ�洢�ڵ���
	public void saveMap(String dicSavePath, Map<String, Integer> map)
			throws FileNotFoundException, IOException {
		ObjectOutputStream oot = new ObjectOutputStream(new FileOutputStream(
				dicSavePath));
		oot.writeObject(map);
		oot.flush();
		oot.close();
	}

}
