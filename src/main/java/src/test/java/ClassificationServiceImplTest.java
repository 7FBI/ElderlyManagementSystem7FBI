package src.test.java;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.bean.Classification;
import com.service.ClassificationService;

public class ClassificationServiceImplTest {
	@Autowired
	@Qualifier("ClassificationService")
	private ClassificationService classificationService;
	
	@Test
	public void selectBy(){
		Classification classification=null;
		classification=classificationService.selectByPrimaryKey(1);
		System.out.println(classification.getClassname());
	}
}
