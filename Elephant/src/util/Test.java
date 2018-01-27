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

		// 创建分词所需的词典树
		TrieTree segTree = new TrieTree();
		segTree.bundleInsertFoLine("C:\\Users\\zoe\\Desktop\\dicNeg.txt");
		segTree.bundleInsertFoLine("C:\\Users\\zoe\\Desktop\\dicPos.txt");
		segTree.bundleInsertFoLine("C:\\Users\\zoe\\Desktop\\dic.txt");
		segTree.bundleInsertForSpace("C:\\Users\\zoe\\Desktop\\modern.txt");

		// 创建两颗情感树
		TrieTree emoPosTree = new TrieTree();
		TrieTree emoNegTree = new TrieTree();
		emoPosTree.bundleInsertFoLine("C:\\Users\\zoe\\Desktop\\dicPos.txt");
		emoNegTree.bundleInsertFoLine("C:\\Users\\zoe\\Desktop\\dicNeg.txt");
		//以对象流的形式保存树
		Test test=new Test();
		test.saveTree("C:\\Users\\zoe\\Desktop\\Object\\emoPosTree.txt", emoPosTree);
		test.saveTree("C:\\Users\\zoe\\Desktop\\Object\\emoNegTree.txt", emoNegTree);
		test.saveTree("C:\\Users\\zoe\\Desktop\\Object\\segTree.txt", segTree);

		// 测试分词,并且将两个批处理返回来的map合并成一个map
		SeparateUtil sep = new SeparateUtil();
		// 创建一个map存储合集
		Map<String, Integer> dicMap = new HashMap<String, Integer>();
		// 创建两个map接收分词完后的结果集
		Map<String, Integer> mapP = sep.bundleSegMap(
				"C:\\Users\\zoe\\Desktop\\posData.txt", segTree);
		Map<String, Integer> mapN = sep.bundleSegMap(
				"C:\\Users\\zoe\\Desktop\\negData.txt", segTree);
		//存储两个数据分词集合
		test.saveMap("C:\\Users\\zoe\\Desktop\\Object\\mapP.txt", mapP);
		test.saveMap("C:\\Users\\zoe\\Desktop\\Object\\mapN.txt", mapN);
		// 创建两个整形变量接收评论分词后的所有特征的数量，或者说权重
		double posWeight = 0;
		double negWeight = 0;
		// 输出积极评论分词的结果，并保存到合集
		System.out.println("***********dataP分词结果************");
		for (Entry<String, Integer> entry : mapP.entrySet()) {
			if (dicMap.containsKey(entry.getKey())) {
				dicMap.put(entry.getKey(),
						dicMap.get(entry.getKey()) + entry.getValue());
			} else {
				dicMap.put(entry.getKey(), entry.getValue());
			}
			// 累加积极评论后分词出来所有词的总数量
			posWeight = posWeight + entry.getValue();
			System.out.println("在积极分词集合所占权重：" + entry.getKey() + "==="
					+ mapP.get(entry.getKey()));
		}
		// 输出消极评论分词的结果，并保存到合集
		System.out.println("**********dataN分词结果*************");
		for (Entry<String, Integer> entry : mapN.entrySet()) {
			if (dicMap.containsKey(entry.getKey())) {
				dicMap.put(entry.getKey(),
						dicMap.get(entry.getKey()) + entry.getValue());
			} else {
				dicMap.put(entry.getKey(), entry.getValue());
			}
			// 累加消极评论后分词出来所有词的总数量
			negWeight = negWeight + entry.getValue();
			System.out.println("在消极分词集合中所占权重:--》" + entry.getKey() + "==="
					+ mapN.get(entry.getKey()));
		}
		// 测试合集是否成功，循环输出并且与上面输出进行比较
		System.out.println("########合集输出结果检查#########");
		// for (Entry<String, Integer> entry : dicMap.entrySet()) {
		// System.out.println("权重输出检查");
		// System.out.println("积极评论分词后特征权重:" + posWeight);
		// System.out.println("消极评论分词后特征权重:" + negWeight);
		// }
		/**
		 * 以下单个评论进行预测
		 */
		System.out
				.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		// 创建存储当前特征的权重
		double currentFeaWeightOnP = 0;
		double currentFeaWeightOnN = 0;
		// 创建记录分子与分明的变化值
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
		// 要进行判断的评论
		String review = "物流太慢了";
		System.out.println(review);
		Map<String, Integer> cuReviewMap = sep.stringSep(review, segTree);
		for (Entry<String, Integer> entry : cuReviewMap.entrySet()) {
			System.out.println("评论分词结果显示：" + entry.getKey());
		}

		System.out.println();
		for (Entry<String, Integer> entry : cuReviewMap.entrySet()) {
			System.out.println("进入循环");
			if (emoPosTree.search(entry.getKey())
					|| emoNegTree.search(entry.getKey())) {
				System.out.println(entry.getKey() + "是否在积极评论分词集合中："
						+ emoPosTree.search(entry.getKey()));
				System.out.println(entry.getKey() + "是否在消极评论分词集合中："
						+ emoNegTree.search(entry.getKey()));

				System.out.println("当前判断值为：" + entry.getKey());
				// 判断积极情感词典中是否包含该对象
				if (mapP.containsKey(entry.getKey())) {
					currentFeaWeightOnP = mapP.get(entry.getKey());
					System.out.println("积极分词集合中当前特征权重:"
							+ mapP.get(entry.getKey()));
				}

				/**
				 * 计算在积极评论的概率的分子与分母： perTotalPN:总特征数分之一 base1:积极分词集合权数+1
				 * num1:积极分词集合的分子 temp1:存放单独特征的值，用于累乘 pre:先验概率
				 */
				num1 = (currentFeaWeightOnP + perTotalPN);
				temp1 = (num1 / base1);
				// BigDecimal b1 = new BigDecimal(Double.toString(temp1));
				// BigDecimal b2 = new BigDecimal(Double.toString(result1));
				// result1 = b1.multiply(b2).doubleValue();
				result1 = (temp1 * result1);

				// 测试数据
				System.out.println("测试数据集1");
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
					System.out.println("消极分词集合中当前特征权重:"
							+ mapN.get(entry.getKey()));
				}
				// 计算在消极评论的概率的分子与分母
				num2 = (currentFeaWeightOnN + perTotalPN);
				temp2 = (num2 / base2);
				result2 = (temp2 * result2);

				// 测试数据
				System.out.println("测试数据集2");
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
		// 接收最终就算的结果
		result1 = (double) (pre1 * result1);
		result2 = (double) (pre2 * result2);
		// 判断大小
		if (currentFeaWeightOnN != 0 || currentFeaWeightOnN != 0) {
			if ((double) result1 > (double) result2) {
				System.out.println("************");
				System.out.println("=========>积极评论");
				System.out.println("************");
			} else {
				System.out.println("************");
				System.out.println("=========>消极评论");
				System.out.println("************");
			}
		}else{
			System.out.println("=========>普通评论");
		}
		// 输出先验和后验概率进行检测
		System.out.println("输出先验和后验概率进行检测");
		System.out.println("先验概率：" + (posWeight / (posWeight + negWeight)));
		System.out.println("先验概率：" + (negWeight / (posWeight + negWeight)));
		System.out.println("积极评论分词总权数：" + posWeight);
		System.out.println("消极评论分词总权数：" + negWeight);
		System.out.println("积极评论后验概率：" + (double) (result1));
		System.out.println("消极评论后验概率：" + (double) (result2));
		System.out.println("-------------------------------");
		// 测试结果
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
		// System.out.println("测试值1:" + resultTemp1
		// * (negWeight / (posWeight + negWeight)));
		// System.out.println("测试值2:" + resultTemp2
		// * (negWeight / (posWeight + negWeight)));

	}

	// 读取以对象形式保存的树，未使用
	public TrieTree readObjectForTree(String treeObjecPath)
			throws FileNotFoundException, IOException, ClassNotFoundException {
		ObjectInputStream ois = new ObjectInputStream(new FileInputStream(
				treeObjecPath));
		TrieTree tree = (TrieTree) ois.readObject();
		ois.close();
		return tree;

	}
	//将树以对象流的方式存储在电脑
	public void saveTree(String dicSavePath, TrieTree tree)
			throws FileNotFoundException, IOException {
		ObjectOutputStream oot = new ObjectOutputStream(new FileOutputStream(
				dicSavePath));
		oot.writeObject(tree);
		oot.flush();
		oot.close();
	}
	//将map以对象流的形式存储在电脑
	public void saveMap(String dicSavePath, Map<String, Integer> map)
			throws FileNotFoundException, IOException {
		ObjectOutputStream oot = new ObjectOutputStream(new FileOutputStream(
				dicSavePath));
		oot.writeObject(map);
		oot.flush();
		oot.close();
	}

}
