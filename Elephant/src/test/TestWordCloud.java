package test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import spiderCommentsUtil.WordCloudUtil;

public class TestWordCloud {
	public static void main(String[] args) {
		WordCloudUtil w1=new WordCloudUtil();
		
		List<String> crawingList = new ArrayList<String>();
		crawingList.add("1");
		crawingList.add("1");
		crawingList.add("1");
		crawingList.add("1");
		crawingList.add("1");
		crawingList.add("1");
		//w1.createWordCloud("1", crawingList);
	}
}
