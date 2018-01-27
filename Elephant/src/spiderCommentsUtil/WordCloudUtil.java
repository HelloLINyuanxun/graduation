package spiderCommentsUtil;

import java.awt.Color;
import java.awt.Dimension;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import com.kennycason.kumo.CollisionMode;
import com.kennycason.kumo.WordCloud;
import com.kennycason.kumo.WordFrequency;
import com.kennycason.kumo.bg.CircleBackground;
import com.kennycason.kumo.font.FontWeight;
import com.kennycason.kumo.font.KumoFont;
import com.kennycason.kumo.font.scale.SqrtFontScalar;
import com.kennycason.kumo.nlp.FrequencyAnalyzer;
import com.kennycason.kumo.nlp.tokenizer.ChineseWordTokenizer;
import com.kennycason.kumo.palette.ColorPalette;
public class WordCloudUtil {
	/**
	 * 
	 * @param fileName 词云文件名 可用商品id作为标识
	 * @param list 处理的爬取的评论列表
	 * @throws IOException
	 */
	public  void createWordCloud(String fileName, String cloudPath)
			throws IOException {
		final FrequencyAnalyzer frequencyAnalyzer = new FrequencyAnalyzer();
		frequencyAnalyzer.setWordFrequenciesToReturn(600);
		frequencyAnalyzer.setMinWordLength(3);
		frequencyAnalyzer.setWordTokenizer(new ChineseWordTokenizer());
		final List<WordFrequency> wordFrequencies = frequencyAnalyzer
				.load(cloudPath);
		final Dimension dimension = new Dimension(600, 600);
		final WordCloud wordCloud = new WordCloud(dimension,
				CollisionMode.PIXEL_PERFECT);
		wordCloud.setPadding(2);
		wordCloud.setKumoFont(new KumoFont("宋体", FontWeight.PLAIN));
		wordCloud.setBackground(new CircleBackground(300));
		wordCloud.setColorPalette(new ColorPalette(new Color(0xD5CFFA),
				new Color(0xBBB1FA), new Color(0x9A8CF5), new Color(0x806EF5)));
		wordCloud.setFontScalar(new SqrtFontScalar(12, 45));
		wordCloud.build(wordFrequencies);
		wordCloud.writeToFile("C:\\Users\\zoe\\Desktop\\project\\productWordCloud\\" + fileName + ".png");
	}

	private  Collection<String> loadStopWords() throws IOException {
		// TODO Auto-generated method stub
		List<String> stopList = new ArrayList<String>();
		FileInputStream fis = new FileInputStream(new File(
				"C:\\Users\\zoe\\Desktop\\stopForKUMO.txt"));
		@SuppressWarnings("resource")
		BufferedReader bd = new BufferedReader(new InputStreamReader(fis,
				"utf-8"));
		String temp;
		while ((temp = bd.readLine()) != null) {
			stopList.add(temp);
			System.out.println(temp);
		}
		return stopList;
	}
}
