package spiderCommentsUtil;

import java.io.IOException;

import com.hankcs.hanlp.classification.classifiers.NaiveBayesClassifier;

public class NavieBayesUtil {
	public  final String CORPUS_FOLDER = "JDComments";

	public  NaiveBayesClassifier getModel() throws IOException {
		NaiveBayesClassifier classifier = new NaiveBayesClassifier();
		classifier.train(CORPUS_FOLDER);
		return classifier;
	}

}
